package com.rt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.rt.Service.CategoryService;
import com.rt.UserDTO.CategoryReqDTO;
import com.rt.UserDTO.CategoryResponceDTO;

@Controller
public class CategoryController {

	@Autowired
	private CategoryService categoryService;

	@GetMapping("/AddCategory")
	public String showCategory(Model model) {

		model.addAttribute("categories");
		return "category-list";
	}

	@GetMapping("/categories/new")
	public String showAddCategoryForm(Model model) {
		model.addAttribute("category");
		return "addcategory";

	}

	@GetMapping("/getAllCategory")
	public String getAllCategories(Model model) {
		List<CategoryResponceDTO> name = categoryService.getAllCategories();
		model.addAttribute("categoryNames", name);
		return "category-list";

	}

	@PostMapping("/categories/save")
	public String saveCategory(@ModelAttribute CategoryReqDTO catReqDto, Model model) {
		boolean isadded = categoryService.saveCategory(catReqDto);

		if (isadded) {
			model.addAttribute("message", "this category added succussfully...!");
		} else {
			model.addAttribute("message", "Failed add category");

		}
		return "redirect:/getAllCategory";
	}

	@GetMapping("/categories/edit/{id}")
	public String editCategory(@PathVariable int id, Model model) {

		CategoryResponceDTO category = categoryService.getCategoryById(id);
		model.addAttribute("category", category);
		return "category-edit-form";

	}

	@PostMapping("/categories/update")
	public String updateCategory(@ModelAttribute CategoryResponceDTO dto) {

		boolean isadded = categoryService.updateCategory(dto);
		return "redirect:/getAllCategory";
	}

}
