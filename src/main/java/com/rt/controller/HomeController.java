package com.rt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rt.Service.BrandService;
import com.rt.Service.CategoryService;
import com.rt.UserDTO.BrandRespDTO;
import com.rt.UserDTO.CategoryResponceDTO;

@Controller
public class HomeController {
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private BrandService brandService;
	
	
	@GetMapping("/")
	public String indexPage() {

		return "login";

	}

	@GetMapping("/register-form")
	public String register() {

		return "register";
	}

	@GetMapping("/login")
	public String returnloginpage() {
		return "login";

	}

	@GetMapping("/addProduct")
	public String page(Model model) {
	    List<BrandRespDTO> brands = brandService.getAllBrand(); // Brand name आणि id
	    List<CategoryResponceDTO> categories = categoryService.getAllCategories(); // Category name आणि id

	    model.addAttribute("brands", brands);
	    model.addAttribute("categories", categories);

	    return "addProduct";
	}


}
