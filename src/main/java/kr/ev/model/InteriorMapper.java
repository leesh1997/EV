package kr.ev.model;

import java.util.List;

public interface InteriorMapper {

	List<InteriorVO> showInteriorImg();

	int getVisitCount();

	List<InteriorVO> showInteriorImg(int startNum);


	List<ColorVO> standardColorGallery();

	List<PaletteVO> showPalette(String m_email);

}
