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
package org.apache.ibatis.benchmarks.jmh.collection_injection;

import org.apache.ibatis.BaseDataTest;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.ibatis.submitted.collection_injection.immutable.ImmutableHouse;
import org.apache.ibatis.submitted.collection_injection.immutable.ImmutableHouseMapper;
import org.apache.ibatis.submitted.collection_injection.property.House;
import org.apache.ibatis.submitted.collection_injection.property.HouseMapper;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;
import org.openjdk.jmh.runner.Runner;
import org.openjdk.jmh.runner.RunnerException;
import org.openjdk.jmh.runner.options.Options;
import org.openjdk.jmh.runner.options.OptionsBuilder;

import java.io.Reader;
import java.util.List;
import java.util.concurrent.TimeUnit;

@Fork(1)
@Warmup(iterations = 1)
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
public class PropertyVsConstructorInjectionBenchmark {

  @State(Scope.Benchmark)
  public static class SessionFactoryState {

    private SqlSessionFactory sqlSessionFactory;

    @Setup
    public void setup() throws Exception {
      try (Reader reader = Resources
        .getResourceAsReader("org/apache/ibatis/submitted/collection_injection/mybatis_config.xml")) {
        sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
      }

      BaseDataTest.runScript(sqlSessionFactory.getConfiguration().getEnvironment().getDataSource(),
        "org/apache/ibatis/submitted/collection_injection/create_db.sql");

      BaseDataTest.runScript(sqlSessionFactory.getConfiguration().getEnvironment().getDataSource(),
        "org/apache/ibatis/submitted/collection_injection/data_load_large.sql");
    }

    public SqlSessionFactory getSqlSessionFactory() {
      return sqlSessionFactory;
    }
  }

  @Benchmark
  public House retrieveSingleUsingPropertyInjection(SessionFactoryState sessionFactoryState) {
    try (SqlSession sqlSession = sessionFactoryState.getSqlSessionFactory().openSession()) {
      final HouseMapper mapper = sqlSession.getMapper(HouseMapper.class);
      return mapper.getHouse(69);
    }
  }

  @Benchmark
  public List<House> retrieveAllUsingPropertyInjection(SessionFactoryState sessionFactoryState) {
    try (SqlSession sqlSession = sessionFactoryState.getSqlSessionFactory().openSession()) {
      final HouseMapper mapper = sqlSession.getMapper(HouseMapper.class);
      return mapper.getAllHouses();
    }
  }

  @Benchmark
  public ImmutableHouse retrieveSingleUsingConstructorInjection(SessionFactoryState sessionFactoryState) {
    try (SqlSession sqlSession = sessionFactoryState.getSqlSessionFactory().openSession()) {
      final ImmutableHouseMapper mapper = sqlSession.getMapper(ImmutableHouseMapper.class);
      return mapper.getHouse(69);
    }
  }

  @Benchmark
  public List<ImmutableHouse> retrieveAllUsingConstructorInjection(SessionFactoryState sessionFactoryState) {
    try (SqlSession sqlSession = sessionFactoryState.getSqlSessionFactory().openSession()) {
      final ImmutableHouseMapper mapper = sqlSession.getMapper(ImmutableHouseMapper.class);
      return mapper.getAllHouses();
    }
  }

  public static void main(String[] args) throws RunnerException {
    Options opt = new OptionsBuilder()
      .include(PropertyVsConstructorInjectionBenchmark.class.getSimpleName())
      .build();

    new Runner(opt).run();
  }
}
