package kr.ev.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface MypageMapper {

	void memberUpdate(MemberVO vo);

	void memberDelete(MemberVO vo);

	int getBoardCnt(MemberVO vo);
	

}
