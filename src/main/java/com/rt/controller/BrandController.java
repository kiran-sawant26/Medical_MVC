package com.rt.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rt.Service.BrandService;
import com.rt.UserDTO.BrandReqDTO;
import com.rt.UserDTO.BrandRespDTO;

@Controller
public class BrandController {

	@Autowired
	private BrandService brandService;

	@GetMapping("/addBrand")
	public String addBrand() {

		return "brand-list";
	}

	@GetMapping("/brands/new")
	public String addNewBrand() {
		return "add-brand";
	}

	@PostMapping("/brands/save")
	public String saveBrand(@ModelAttribute BrandReqDTO reqDto, Model model) {
		boolean isadded = brandService.saveBrand(reqDto);

		return "redirect:/getAllBrand";

	}

	@GetMapping("/getAllBrand")
	public String getAllCategory(Model model) {
		List<BrandRespDTO> brands = brandService.getAllBrand();

		model.addAttribute("allbrand", brands);
		return "brand-list";

	}

	@GetMapping("/brands/edit/{id}")
	public String editBrand(@PathVariable int id, Model model) {

		BrandRespDTO brand = brandService.editBrand(id);

		model.addAttribute("brand", brand);
		return "update-brand-form";

	}

	@PostMapping("/brands/update")
	public String UdpateBrand(@ModelAttribute BrandRespDTO respDto) {
		boolean isadded = brandService.updateBrand(respDto);
		return "redirect:/getAllBrand";
	}

}
