package com.ks.sb_project.repository;

import com.ks.sb_project.dto.Member;
import org.apache.ibatis.annotations.Mapper;



@Mapper
public interface LoginMapper {
	
	int selectCount();
	Member selectForLogin(String id, String pw);
	Member selectById(String id);
	void memberJoin(Member member);
	void memberUpdate(Member member);
	void memberDelete(int id);
	boolean LoginConfirm(String id, String pw);


	
}
