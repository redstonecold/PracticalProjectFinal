package com.mycompany.myapp.post;

import org.apache.ibatis.session.SqlSession;   //DAO 는따로 만들어 쓰는 것으로? 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PostDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public int insertPost(PostVO vo) {
		int result=sqlSession.insert("Post.insertPost",vo);
		return result;
	}
	public int updatePost(PostVO vo) {
		int result=sqlSession.update("Post.updatePost",vo); //여기 insert가 update인지는 모르겠음 
		return result;
	}
	public int deletePost(int num) {
		int result=sqlSession.delete("Post.deletePost",num);
		return result;
	}
	
	public PostVO selectMember(int userid) {
		return (PostVO)sqlSession.selectOne("Post.getPost",userid);
	}
	
	
	//내가 만들 DAO에서 할 것은 list 하나의 정보를 가져와서 그것을 어떻게 보여줄지를 하면 된다. 
	//보여줄때 사진도 어떻게 할지를 잘 생각하기 
	
	
	
	

	
}
