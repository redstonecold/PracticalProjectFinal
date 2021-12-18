package com.mycompany.myapp.post;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PostDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public int insertPost(PostVO vo) {
		int result = sqlSession.insert("Post.insertPost", vo);
		return result;
	}
	
	public int updatePost(PostVO vo) {
		int result = sqlSession.update("Post.updatePost", vo);
		return result;
	}
	
	public int deletePost(int seq) {
		int result = sqlSession.delete("Post.deletePost", seq);
		return result;
	}
	
	public PostVO getPost(int seq) {
		PostVO result = sqlSession.selectOne("Post.getPost", seq);
		return result;
	}
	
	public List<PostVO> getPostList() {
		List<PostVO> result = sqlSession.selectList("Post.getPostList");
		return result;
	}

}
