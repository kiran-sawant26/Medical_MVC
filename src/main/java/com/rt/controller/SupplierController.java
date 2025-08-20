package com.rt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.rt.Service.SupplierService;
import com.rt.UserDTO.SupplierReqDTO;

import ch.qos.logback.core.model.Model;

@Controller
public class SupplierController {

	@Autowired
	private SupplierService supplierService;

	@GetMapping("/addSupplier")
	public String addSup() {

		return "add-supplier";
		
	}

	@PostMapping("/saveSupplier")
	public String addSupplier(@ModelAttribute SupplierReqDTO dto, Model model) {

		supplierService.addSupplier(dto);

		return null;

	}
	
	

}
