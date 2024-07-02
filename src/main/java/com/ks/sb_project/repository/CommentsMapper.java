package com.ks.sb_project.repository;

import java.util.ArrayList;
import java.util.List;

import com.ks.sb_project.dto.Comments;
import com.ks.sb_project.dto.Pagination;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;



@Mapper
public interface CommentsMapper {
	int selectCount();
	List<Comments> selectCommentsList(int id);
	void insertComments(Comments comments);
	void updateComments(Comments comments);
	void deleteComments(int num);
	Comments selectCommentstById(int num,int id);
	List<Comments> selectAll(int id);
	List<Comments> selectList(int start, int listSize);
	List<Comments> paging(int id, int start, int listSize);
	public ArrayList<Pagination> getPagination(int pageNo);
	Double average(int id);
	int sum(int id);

}
