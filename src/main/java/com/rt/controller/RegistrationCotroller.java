package com.rt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.rt.Service.RegistrationService;
import com.rt.UserDTO.RegReqDTO;

@Controller
public class RegistrationCotroller {

	@Autowired
	private RegistrationService registrationservice;

	@PostMapping("/RegisterUser")
	public String registeruser(@ModelAttribute RegReqDTO regReqDTO, Model model) {

		boolean added = registrationservice.addRegister(regReqDTO);
		if (added) {
			model.addAttribute("success", "Registered successfully.....!");
			return "login";
		}
		model.addAttribute("error", "Something went wrong.....!");
		return "register";

	}
}
