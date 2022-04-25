package kr.ev.model;

import java.util.ArrayList;
import java.util.List;

public interface InteriorMapper {

	List<InteriorVO> showInteriorImg();

	int getVisitCount();

	List<InteriorVO> showInteriorImg(int startNum);


	List<ColorVO> standardColorGallery();

	List<PaletteVO> showPalette(String m_email);

	List<InteriorVO> getSelect(SearchPageVO vo);

	int getVisitCount2(SearchPageVO vo);

	List<ColorVO> colorList(ColorVO cvo);

	int getVisitCount3(SearchPageVO vo);

	List<InteriorVO> getPlSelect(SearchPageVO vo);

	ArrayList<WishlistVO> startcheck(String info);

	WishlistVO Ichecklike(ZzimVO zzim);

	WishlistVO Ipluslike(ZzimVO zzim);

	WishlistVO Ideletelike(ZzimVO zzim);

	ArrayList<WishlistVO> istartcheck(String info);



}
