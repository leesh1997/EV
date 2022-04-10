package kr.ev.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {

	public void joinInsert(MemberVO vo);

	public MemberVO idCheck(String id);

	public static MemberVO getUser(MemberVO vo) {
		// TODO Auto-generated method stub
		return null;
	}





}
