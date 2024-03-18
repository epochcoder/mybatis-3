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

import org.apache.ibatis.BaseDataTest;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.ibatis.submitted.collection_injection.immutable.*;
import org.apache.ibatis.submitted.collection_injection.property.*;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.atomic.AtomicLong;

import static org.assertj.core.api.Assertions.assertThat;

@Disabled // should not run in pipeline as this is a performance test
class PropertyVsConstructorPerformanceTest {

  private static SqlSessionFactory sqlSessionFactory;

  @BeforeAll
  static void setUp() throws Exception {
    try (Reader reader = Resources
      .getResourceAsReader("org/apache/ibatis/submitted/collection_injection/mybatis_config.xml")) {
      sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
    }

    BaseDataTest.runScript(sqlSessionFactory.getConfiguration().getEnvironment().getDataSource(),
      "org/apache/ibatis/submitted/collection_injection/create_db.sql");

    BaseDataTest.runScript(sqlSessionFactory.getConfiguration().getEnvironment().getDataSource(),
      "org/apache/ibatis/submitted/collection_injection/data_load_large.sql");

    warmup();
  }

  static void warmup() {
    for (int i = 0; i < 50; i++) {
      try (SqlSession sqlSession = sqlSessionFactory.openSession()) {
        final HouseMapper mapper = sqlSession.getMapper(HouseMapper.class);
        final ImmutableHouseMapper immutableHouseMapper = sqlSession.getMapper(ImmutableHouseMapper.class);

        mapper.getHouse(i);
        immutableHouseMapper.getHouse(i);
      }
    }
  }

  @Test
  void runPerformanceTest() {
    final Random random = new Random();
    final long iterations = 1_000;
    final Map<Class<?>, AtomicLong> times = new HashMap<>(2);
    times.put(HouseMapper.class, new AtomicLong());
    times.put(ImmutableHouseMapper.class, new AtomicLong());

    for (int i = 0; i < iterations * 2; i++) {
      if (random.nextInt() % 2 == 0) {
        try (SqlSession sqlSession = sqlSessionFactory.openSession()) {
          final HouseMapper mapper = sqlSession.getMapper(HouseMapper.class);
          final long startTime = System.currentTimeMillis();
          List<House> allHouses = mapper.getAllHouses();
          assertThat(allHouses).isNotNull().hasSize(100);
          times.get(HouseMapper.class).addAndGet(System.currentTimeMillis() - startTime);
        }
      } else {
        try (SqlSession sqlSession = sqlSessionFactory.openSession()) {
          final ImmutableHouseMapper mapper = sqlSession.getMapper(ImmutableHouseMapper.class);
          final long startTime = System.currentTimeMillis();
          List<ImmutableHouse> allHouses = mapper.getAllHouses();
          assertThat(allHouses).isNotNull().hasSize(100);
          times.get(ImmutableHouseMapper.class).addAndGet(System.currentTimeMillis() - startTime);
        }
      }
    }

    System.out.println(times);
    System.out.println("Property:" + calculateActualTime(times, HouseMapper.class, iterations) + "ms");
    System.out.println("Constructor:" + calculateActualTime(times, ImmutableHouseMapper.class, iterations) + "ms");
  }

  private double calculateActualTime(Map<Class<?>, AtomicLong> times, Class<?> mapper, long iterations) {
    return (double) times.get(mapper).get() / (double) iterations;
  }
}
