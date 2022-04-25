package kr.ev.model;

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



}
