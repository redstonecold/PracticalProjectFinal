package com.mycompany.myapp.post;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	public UserVO getUser(UserVO vo){
		
		if(sqlSession.selectOne("User.getUser",vo)==null)
			System.out.println("DAO 가 null");
		return sqlSession.selectOne("User.getUser",vo); //여기서 sql 을 콜 하는 것으로 볼 수 있음
	}
}
