package kr.ev.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProductMapper {

	List<ProductVO> product();

	public int getVisitCount();

	List<VideoVO> product(int startNum);

	List<VideoVO> product_dis();

	/* List<VideoVO> product_result(int startNum,String searchinfo); */

	int getVisitCount_result(String searchinfo);

	/* List<VideoVO> product_result(String searchinfo); */

	List<VideoVO> product_result(SearchPageVO spvo);

	WishlistVO pluslike(int likeint);

	WishlistVO checklike(int likeint);

	WishlistVO deletelike(int likeint);

	WishlistVO startcheck(String info);


	
}
