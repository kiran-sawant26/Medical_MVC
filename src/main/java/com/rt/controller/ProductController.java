package com.rt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rt.Service.ProductService;
import com.rt.UserDTO.ProductReqDTO;
import com.rt.UserDTO.ProductResponseDto;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;

	@PostMapping("/AddMedicine")
	public String addProduct(@ModelAttribute ProductReqDTO productReqDTO, Model model) {

		boolean isadded = productService.addProduct(productReqDTO);

		if (isadded) {
			return "redirect:/getAllMedicines";

		} else {
			return "addprdo";
		}
				
	}
	

	@GetMapping("/getAllMedicines")
	public String allProducts(
	        @RequestParam(defaultValue = "0") int page,
	        @RequestParam(defaultValue = "10") int size,
	        Model model) {

	    List<ProductResponseDto> list = productService.getPaginatedProducts(page, size);

	    model.addAttribute("productList", list);
	    model.addAttribute("currentPage", page);
	    model.addAttribute("pageSize", size);

	    return "allProduct";
	}


	@GetMapping("/editProduct")
	public String showEditForm(@RequestParam("id") Long id, Model model) {
		ProductResponseDto product = productService.getProductById(id);
		model.addAttribute("product", product);
		return "updateProduct";
	}

	@PostMapping("/updateProduct")
	public String updateForm(ProductReqDTO reqDto) {
		boolean isdata = productService.updateProduct(reqDto);

		if (isdata) {
			return "redirect:/getAllMedicines";
		} else {
			return "updateFail";
		}

	}
	
	@GetMapping("/deleteProduct")
	public String deleteProduct(@RequestParam("id") int id) {
	    productService.deleteproduct(id);
	    return "redirect:/getAllMedicines";
	}
    

}
