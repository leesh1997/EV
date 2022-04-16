package kr.ev.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface VideoMapper {

	//public List<VideoVO> video(int postStart);
	
	public List<VideoVO> video(int pageCount);

	public int boardAmount();
	
	VideoVO Select(int q_num);

	public int getVisitCount();

	public List<VideoVO> search_video(String search_word, int pageCount);

	public int getSearchVisitCount(String serach_word);
	
}
