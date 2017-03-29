package com.qingke.mybatis.main;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.sql.DataSource;

import org.apache.ibatis.datasource.pooled.PooledDataSourceFactory;
import org.apache.ibatis.mapping.Environment;
import org.apache.ibatis.session.Configuration;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.ibatis.transaction.jdbc.JdbcTransactionFactory;
import org.apache.ibatis.type.TypeAliasRegistry;

import com.qingke.mybatis.model.Status;
import com.qingke.mybatis.model.Student;
import com.qingke.mybatis.model.StudentMapper;

public class MybatisMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		InputStream is = MybatisMain.class.getClassLoader().getResourceAsStream("mybatis.xml");
		SqlSessionFactory sf = new SqlSessionFactoryBuilder().build(is);
		SqlSession session = sf.openSession();
//		create(session);
//		delete(session);
//		update(session);
//		selectOne(session);
//		selectAll(session);
//		getStudent(session);
		getStudentAndStatus(session);
		session.close();
		
		System.out.println("=================Java APi==================");
		SqlSession sqlSession = getSession();
		useJavaApiSelectOne(sqlSession);
		sqlSession.close();
	}
	
	public static SqlSession getSession(){
		Properties p = new Properties();
		p.put("driver", "com.mysql.jdbc.Driver");
		p.put("url", "jdbc:mysql://localhost:3306/student_data");
		p.put("username", "root");
		p.put("password", "root");
		
		PooledDataSourceFactory pdf = new PooledDataSourceFactory();
		pdf.setProperties(p);
		
		DataSource ds = pdf.getDataSource();
		JdbcTransactionFactory jdbc = new JdbcTransactionFactory();
		Environment env = new Environment("dev", jdbc, ds);
		Configuration config = new Configuration(env);
		config.addMapper(StudentMapper.class);
		
		TypeAliasRegistry alias = config.getTypeAliasRegistry();
		alias.registerAliases("com.qingke.mybatis.model");
		System.out.println(alias.getTypeAliases());
		
		SqlSessionFactory sqlf = new SqlSessionFactoryBuilder().build(config);
		SqlSession session = sqlf.openSession();
		return session;
	}
	
	public static void useJavaApiSelectOne(SqlSession session) {
		String statement = "com.qingke.mybatis.model.StudentMapper.selectOneStudent";
//		Map<String,Object> map = session.selectOne(statement, 4);
		Student map = session.selectOne(statement, 4);
		session.commit();
		System.out.println(map);
	}

	public static void create(SqlSession session) {
		String statement = "com.qingke.mybatis.mapping.student.createStudent";
		Student stu = new Student();
		stu.setDate_of_birth("2015-10-10");
		stu.setEmail("56@qq.com");
		stu.setFirst("tom12");
		stu.setGender("ÄÐ");
		stu.setLast("cat");
		stu.setSid("20160223");
		stu.setId(2023);
		stu.setStudent_status_id(1);

		int count = session.insert(statement, stu);
		session.commit();
		System.out.println("insert count:" + count + " as " + stu);
	}
	
	public static void delete(SqlSession session) {
		String statement = "com.qingke.mybatis.mapping.student.deleteStudent";
		int count = session.delete(statement,"tom12");
		session.commit();
		System.out.println("delete count:" + count);
	}
	
	public static void update(SqlSession session) {
		String statement = "com.qingke.mybatis.mapping.student.updateStudent";
		Student stu = new Student();
		stu.setFirst("tomhh");
		stu.setId(4);
		int count = session.update(statement, stu);
		session.commit();
		System.out.println("delete count:" + count);
	}
	
	public static void selectOne(SqlSession session) {
		String statement = "com.qingke.mybatis.mapping.student.selectOneStudent";
		Map<String,Object> map = session.selectOne(statement, 4);
		session.commit();
		System.out.println(map);
	}
	
	public static void selectAll(SqlSession session) {
		String statement = "com.qingke.mybatis.mapping.student.selectAllStudent";
		List<Student> list = session.selectList(statement);
		session.commit();
		for(Student stu:list){
			System.out.println(stu);
		}
	}
	
	public static void getStudent(SqlSession session) {
		String statement = "com.qingke.mybatis.mapping.student.getAllStudentById";
		List<Student> list = session.selectList(statement,4);
		session.commit();
		for(Student stu:list){
			System.out.println(stu);
		}
	}
	
	public static void getStudentAndStatus(SqlSession session) {
//		String statement = "status.getStatus";
//		List<Status> list = session.selectList(statement,1);
//		session.commit();
//		for(Status sta:list){
//			System.out.println(sta);
//			System.out.println(sta.students);
//		}
		System.out.println("==============updateStudent============");
		Student stu = new Student();
		stu.setId(4);
		stu.setFirst("tan");
		stu.setLast("tom");
		String update = "com.qingke.mybatis.mapping.student.updateStudent2";
		session.update(update, stu);
		session.commit();
		
		System.out.println("==============selectStudentByid============");
		String statement = "com.qingke.mybatis.mapping.student.getColumn3AllStudentById";
		Student stut = new Student();
		stut.setId(4);
		List<Student> list2 = session.selectList(statement,stut);
		session.commit();
		for(Student stu1:list2){
			System.out.println(stu1);
			System.out.println(stu1.status);
		}
		System.out.println("==================foreach==================");
		String in = "com.qingke.mybatis.mapping.student.getAllStudentIn";
		List<Integer> li = new ArrayList<Integer>();
		li.add(1);
//		li.add(2);
		li.add(3);
		li.add(4);
		List<Student> stus = session.selectList(in, li);
		session.commit();
		for(Student stu2:stus){
			System.out.println(stu2);
		}
	}
	
	

}
