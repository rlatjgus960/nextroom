package com.nextroom.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nextroom.vo.RecordVo;

@Repository
public class RecordDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<Integer> selectUserNo(List<String> members) {
		
		List<Integer> memberNo = new ArrayList<Integer>();
		
		for(int i =0;i<members.size();i++) {
			String nickname = members.get(i);
			//i 아이디 찾기 
			System.out.println(nickname);
			
			int n = sqlSession.selectOne("record.selectUserNo",nickname);
			
			memberNo.add(n);
		}
		System.out.println(memberNo);
		
		return memberNo;
	}
	
	public void insertRecord(List<Integer> memberNo,RecordVo recordVo) {
		
		 for(int i =0 ; i < memberNo.size();i++) {

			recordVo.setUserNo(memberNo.get(i));
			
			sqlSession.insert("record.insertRecord",recordVo);
			
		}
	}
}
