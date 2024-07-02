package com.ks.sb_project.repository;


import com.ks.sb_project.dto.Store;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MemberMapper {
    List<Store> selectLikes(int id);
    List<Store> selectComments(int memberno);

}
