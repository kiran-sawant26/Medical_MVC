package com.rt.ServiceImpl;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.rt.Service.BrandService;
import com.rt.UserDTO.BrandReqDTO;
import com.rt.UserDTO.BrandRespDTO;
import com.rt.UserDTO.CategoryResponceDTO;

@Service
public class BrandServiceImpl implements BrandService{
	
    @Autowired
	private RestTemplate template;
	@Override
	public boolean saveBrand(BrandReqDTO reqDto) {
		
    String URL = "http://localhost:8181/api/saveBrand";
    HttpHeaders headers = new HttpHeaders();
    headers.setContentType(MediaType.APPLICATION_JSON);
    HttpEntity<BrandReqDTO> entity = new HttpEntity<BrandReqDTO>(reqDto,headers);
    Boolean responce = template.postForObject(URL, entity, Boolean.class);
	return responce != null && responce;
	
	}
	@Override
	public List<BrandRespDTO> getAllBrand() {
		
			String URL = "http://localhost:8181/api/Allbrand";

			BrandRespDTO[] allCategories = template.getForObject(URL, BrandRespDTO[].class);

			List<BrandRespDTO> list = Arrays.asList(allCategories);

			return list;
		
	}
	@Override
	public BrandRespDTO editBrand(int id) {
		
		String URL = "http://localhost:8181/api/editBrand/{id}";
		BrandRespDTO responce = template.getForObject(URL, BrandRespDTO.class,id);
		
		return responce;
	}
	@Override
	public boolean updateBrand(BrandRespDTO respDto) {
	    
	    String URL = "http://localhost:8181/api/updateBrand";
	    HttpHeaders header = new HttpHeaders();
	    header.setContentType(MediaType.APPLICATION_JSON);

	    HttpEntity<BrandRespDTO> entity = new HttpEntity<>(respDto, header);

	    try {
	        ResponseEntity<String> response = template.exchange(
	            URL,
	            HttpMethod.PUT,
	            entity,
	            String.class
	        );

	        if (response != null && response.getStatusCode().is2xxSuccessful()) {
	            return true;
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return false;
	}

	
	
	
	
	

}
