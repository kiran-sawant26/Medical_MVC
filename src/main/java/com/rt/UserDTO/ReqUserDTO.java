package com.rt.UserDTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReqUserDTO {
	
	private String name;
	private String username;
	private String password;
	private String role;
	

}
