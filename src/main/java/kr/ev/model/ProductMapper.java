package kr.ev.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProductMapper {

	List<ProductVO> product();

	public int getVisitCount();

	List<VideoVO> product(int startNum);

	List<VideoVO> product_dis();


	
}
