package com.mycompany.myapp;

import java.util.List;

public interface PostService {
	public int insertPost(PostVO vo);
	public int deletePost(int seq);
	public int updatePost(PostVO vo);
	public PostVO getPost(int seq);
	public List<PostVO> getPostList();
}
