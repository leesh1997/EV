package kr.ev.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PaletteMapper {

	List<ColorVO> colorGallery();

	List<ColorVO> chosen_colors();



}
