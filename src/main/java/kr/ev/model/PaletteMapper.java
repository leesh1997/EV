package kr.ev.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.ui.Model;

@Mapper
public interface PaletteMapper {

	List<ColorVO> colorGallery();

	void saveColors(PaletteVO vo);

}
