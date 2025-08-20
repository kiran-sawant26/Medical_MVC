package com.rt.Service;

import java.util.List;
import java.util.Locale.Category;

import com.rt.UserDTO.CategoryReqDTO;
import com.rt.UserDTO.CategoryResponceDTO;

public interface CategoryService {

	boolean saveCategory(CategoryReqDTO catReqDto);

	List<CategoryResponceDTO> getAllCategories();

	CategoryResponceDTO getCategoryById(int id);

	boolean updateCategory(CategoryResponceDTO dto);

	
}
