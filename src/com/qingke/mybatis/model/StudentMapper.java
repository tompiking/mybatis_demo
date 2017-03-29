package com.qingke.mybatis.model;

import java.util.Map;

public interface StudentMapper {
//	Map<String,Object> selectOneStudent(int id);
	Student selectOneStudent(int id);
}
