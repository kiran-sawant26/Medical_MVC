package com.rt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.rt.Service.UserService;
import com.rt.UserDTO.ReqUserDTO;
import com.rt.UserDTO.RespUserDTO;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("/LoginUser")
    public String userLogin(@ModelAttribute ReqUserDTO userdto, HttpSession session) {

        RespUserDTO addedUser = userService.addUser(userdto);
        		System.out.println(addedUser.getRole());
        if (addedUser != null) {
            session.setAttribute("user", addedUser.getUsername());
            session.setAttribute("role", addedUser.getRole());
            return "index";
            
            
//            if (addedUser.getRole().equalsIgnoreCase("Admin")) {
//                return "Admin/dashboard";  
//            } else {
//                return "Cashier/dashboard"; 
//            }
            
            
            
        } else {
           
            return "login"; 
        }
    }
}
