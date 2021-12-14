package com.mycompany.myapp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PostServiceImpl implements PostService{
	
	@Autowired
	PostDAO postDAO;

	@Override
	public int insertPost(PostVO vo) {
		return postDAO.insertPost(vo);
	}

	@Override
	public int deletePost(int seq) {
		return postDAO.deletePost(seq);
	}

	@Override
	public int updatePost(PostVO vo) {
		return postDAO.updatePost(vo);
	}

	@Override
	public PostVO getPost(int seq) {
		return postDAO.getPost(seq);
	}

	@Override
	public List<PostVO> getPostList() {
		return postDAO.getPostList();
	}
}
