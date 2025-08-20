package com.rt.ServiceImpl;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.rt.Service.RegistrationService;
import com.rt.UserDTO.RegReqDTO;

@Service
public class RegistrationServiceIMPL implements RegistrationService {

	RestTemplate templete = new RestTemplate();

	@Override
	public boolean addRegister(RegReqDTO regReqDTO) {

     	String URL = "http://localhost:8181/api/add";

		HttpHeaders header = new HttpHeaders();
		header.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<RegReqDTO> request = new HttpEntity<RegReqDTO>(regReqDTO, header);
		boolean isRegistrered = templete.postForObject(URL, request, Boolean.class);
        
		return isRegistrered;

	}
	
	

}
