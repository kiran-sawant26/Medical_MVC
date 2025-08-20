package com.rt.ServiceImpl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.rt.Service.CategoryService;
import com.rt.UserDTO.CategoryReqDTO;
import com.rt.UserDTO.CategoryResponceDTO;

@Service
public class CategoryServiceIMPL implements CategoryService {

	@Autowired
	private RestTemplate restTemplate;

	@Override
	public boolean saveCategory(CategoryReqDTO catReqDto) {

		String URL = "http://localhost:8181/api/categories";
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<CategoryReqDTO> entity = new HttpEntity<CategoryReqDTO>(catReqDto, headers);
		Boolean response = restTemplate.postForObject(URL, entity, Boolean.class);
		return response != null && response;

	}

	@Override
	public List<CategoryResponceDTO> getAllCategories() {
		String URL = "http://localhost:8181/api/allcategories";

		CategoryResponceDTO[] allCategories = restTemplate.getForObject(URL, CategoryResponceDTO[].class);

		List<CategoryResponceDTO> list = Arrays.asList(allCategories);

		return list;

	}

	@Override
	public CategoryResponceDTO getCategoryById(int id) {
		String URL = "http://localhost:8181/api/editCategory/{id}";
		CategoryResponceDTO responce = restTemplate.getForObject(URL, CategoryResponceDTO.class, id);
		return responce;
	}

	@Override
	public boolean updateCategory(CategoryResponceDTO dto) {

		HttpHeaders header = new HttpHeaders();
		header.setContentType(MediaType.APPLICATION_JSON);
		String URL = "http://localhost:8181/api/category/update";
		HttpEntity<CategoryResponceDTO> responce = new HttpEntity<>(dto, header);
		ResponseEntity<String> entity = restTemplate.exchange(URL, HttpMethod.PUT, responce, String.class);
		
		if(entity != null && entity.getStatusCode().is2xxSuccessful()) {
			return true;
		}else {
			return false;
		}
		
	}

}
