package com.rt.UserDTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class SupplierReqDTO {
	private int id;
	private String name;
	private String contact;
	private String address;
	private String email;

}
