package kr.ev.model;

import java.util.List;

public interface WishListMapper {

	List<PaletteVO> wishlist();

	void pwish_delete(String string);

	List<PaletteVO> wishlist(String m_email);

	List<ProductVO> wishlist2(String m_email);

}
