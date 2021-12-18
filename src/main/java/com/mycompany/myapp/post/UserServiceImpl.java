package com.mycompany.myapp.post;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl {
	@Autowired
	UserDAO userDAO;
	public UserVO getUser(UserVO vo) {
		if(userDAO.getUser(vo)==null)
			System.out.println("serviceimpl 도 null");
		return userDAO.getUser(vo);
	}
}
