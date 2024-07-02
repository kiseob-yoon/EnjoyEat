package com.ks.sb_project.service;

import com.ks.sb_project.dto.Member;
import com.ks.sb_project.dto.Store;
import com.ks.sb_project.repository.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberService {

    @Autowired
    private MemberMapper memberMapper;



    public List<Store> selectComments(int memberno){
        return memberMapper.selectComments(memberno);
    }
    public List<Store> selectLikes(int memberno){
        return memberMapper.selectLikes(memberno);
    }

}
