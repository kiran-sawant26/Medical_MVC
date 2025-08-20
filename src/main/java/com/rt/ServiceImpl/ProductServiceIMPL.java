package com.rt.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.apache.tomcat.util.http.parser.HttpHeaderParser;

import com.rt.Service.ProductService;
import com.rt.UserDTO.ProductReqDTO;
import com.rt.UserDTO.ProductResponseDto;

@Service
public class ProductServiceIMPL implements ProductService {

	RestTemplate templete = new RestTemplate();

	@Override
	public boolean addProduct(ProductReqDTO productReqDTO) {

		String URL = "http://localhost:8181/api/addProduct";
		HttpHeaders header = new HttpHeaders();
		header.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<ProductReqDTO> entity = new HttpEntity<ProductReqDTO>(productReqDTO, header);
		boolean isadded = templete.postForObject(URL, entity, Boolean.class);

		return isadded;
	}

	
	@Override
	public ProductResponseDto getProductById(Long id) {
		String URL = "http://localhost:8181/api/getData/{id}";

		ProductResponseDto product = templete.getForObject(URL, ProductResponseDto.class, id);

		return product;
	}

	@Override
	public boolean updateProduct(ProductReqDTO reqDto) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		String URL = "http://localhost:8181/api/updateProduct";
		HttpEntity<ProductReqDTO> entity = new HttpEntity<>(reqDto, headers);

		ResponseEntity<String> response = templete.exchange(URL, HttpMethod.PUT, entity, String.class);

		if (response != null && response.getStatusCode().is2xxSuccessful()) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public ResponseEntity<Boolean> deleteproduct(int id) {
	    try {
	        String URL = "http://localhost:8181/api/deleteProduct/" + id;

	        HttpHeaders header = new HttpHeaders();
	        header.setContentType(MediaType.APPLICATION_JSON);

	        HttpEntity<String> entity = new HttpEntity<>(header);

	        ResponseEntity<Boolean> result = templete.exchange(URL, HttpMethod.DELETE, entity, Boolean.class);
	        return result;

	    } catch (Exception e) {
	        e.printStackTrace();
	        return new ResponseEntity<>(false, HttpStatus.INTERNAL_SERVER_ERROR);
	    }
	}

	@Override
	public List<ProductResponseDto> getPaginatedProducts(int page, int size) {
	    String URL = "http://localhost:8181/api/allProducts?page=" + page + "&size=" + size;

	    ProductResponseDto[] arr = templete.getForObject(URL, ProductResponseDto[].class);

	    return Arrays.asList(arr);
	}



}
