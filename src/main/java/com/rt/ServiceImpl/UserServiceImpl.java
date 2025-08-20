package com.rt.ServiceImpl;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.rt.Service.UserService;
import com.rt.UserDTO.ReqUserDTO;
import com.rt.UserDTO.RespUserDTO;

@Service
public class UserServiceImpl implements UserService {

	RestTemplate templete = new RestTemplate();

	@Override
	public RespUserDTO addUser(ReqUserDTO userdto) {

		String URL = "http://localhost:8181/api/checklogin";
		HttpHeaders header = new HttpHeaders();
		header.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<ReqUserDTO> request = new HttpEntity<ReqUserDTO>(userdto, header);
		RespUserDTO addedUser = templete.postForObject(URL, request, RespUserDTO.class);

		return addedUser;
	}

}
