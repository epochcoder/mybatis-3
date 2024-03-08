/*
 *    Copyright 2009-2024 the original author or authors.
 *
 *    Licensed under the Apache License, Version 2.0 (the "License");
 *    you may not use this file except in compliance with the License.
 *    You may obtain a copy of the License at
 *
 *       https://www.apache.org/licenses/LICENSE-2.0
 *
 *    Unless required by applicable law or agreed to in writing, software
 *    distributed under the License is distributed on an "AS IS" BASIS,
 *    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *    See the License for the specific language governing permissions and
 *    limitations under the License.
 */
package org.apache.ibatis.submitted.collection_injection;

import static org.assertj.core.api.Assertions.assertThat;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.BaseDataTest;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

class ImmutableCollectionConstructorTest {

  private static SqlSessionFactory sqlSessionFactory;

  @BeforeAll
  static void setUp() throws Exception {
    // create an SqlSessionFactory
    try (Reader reader = Resources
        .getResourceAsReader("org/apache/ibatis/submitted/collection_injection/mybatis-config.xml")) {
      sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
    }

    // populate in-memory database
    BaseDataTest.runScript(sqlSessionFactory.getConfiguration().getEnvironment().getDataSource(),
        "org/apache/ibatis/submitted/collection_injection/CreateDB.sql");
  }

  @Test
  void shouldSelectAllHouses() {
    try (SqlSession sqlSession = sqlSessionFactory.openSession()) {
      final HouseMapper mapper = sqlSession.getMapper(HouseMapper.class);
      final List<House> houses = mapper.getAllHouses();
      Assertions.assertEquals(1, houses.size());

      final StringBuilder builder = new StringBuilder();
      for (House house : houses) {
        builder.append(house.getName()).append("\n");
        for (Room room : house.getRooms()) {
          builder.append("\t").append(room.getName()).append("\n");
          for (Furniture furniture : room.getFurniture()) {
            builder.append("\t\t").append(furniture.getDescription()).append("\n");
            for (Defect defect : furniture.getDefects()) {
              builder.append("\t\t\t").append(defect.getDefect()).append("\n");
            }
          }
        }
      }

      String expected = "MyBatis Headquarters\n" + "\tKitchen\n" + "\t\tCoffee machine\n" + "\t\t\tDoes not work\n"
          + "\t\tFridge\n" + "\tDining room\n" + "\t\tTable\n" + "\tProgramming room\n" + "\t\tBig screen\n"
          + "\t\tLaptop\n" + "\t\t\tCannot run intellij\n";

      assertThat(builder.toString()).isNotEmpty().isEqualTo(expected);
    }
  }
}
