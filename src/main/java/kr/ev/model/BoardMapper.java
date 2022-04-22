package kr.ev.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.multipart.MultipartFile;


@Mapper
public interface BoardMapper {
	
	public List<BoardVO> showBoard();

	public void boardInsert(BoardVO vo);

	public void register(BoardVO vo);

	// public BoardVO fileboard(@Param("b_title") String title, @Param("b_content") String content, @Param("m_nick") String nick) throws Exception;
	public void fileboard(BoardVO vo);

	public int getBoardCnt(MemberVO vo);

	public BoardVO showDetailBoard(String img_url);

	

}
