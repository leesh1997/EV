package kr.ev.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ReviewMapper {

	void writeReview(BoardVO bvo);

	
}
