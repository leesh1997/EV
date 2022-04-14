package kr.ev.model;

import java.util.List;

public interface WishListMapper {

	List<PaletteVO> wishlist();

	void pwish_delete(String string);

}
