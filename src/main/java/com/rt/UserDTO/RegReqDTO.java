package com.rt.UserDTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor


public class RegReqDTO {
	
	private String name;
	private String username;
	private String password;
    private String role;
	

}
