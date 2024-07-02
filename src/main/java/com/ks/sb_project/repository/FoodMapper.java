package com.ks.sb_project.repository;

import java.util.List;

import com.ks.sb_project.dto.Food;
import org.apache.ibatis.annotations.Mapper;




@Mapper
public interface FoodMapper {

	int selectCount();
	List<Food> selectFoodList(int id);
	void insertMenu(Food food);
	void updateMenu(Food food);
	void deleteMenu(int num);
	Food selectMenutById(int num);

	List<String> selectFormattedNumbers(int id);


}
