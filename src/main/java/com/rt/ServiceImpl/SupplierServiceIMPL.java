package com.rt.ServiceImpl;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.rt.Service.SupplierService;
import com.rt.UserDTO.SupplierReqDTO;

@Service
public class SupplierServiceIMPL implements SupplierService {

    private RestTemplate restTemplate = new RestTemplate();

    @Override
    public boolean addSupplier(SupplierReqDTO dto) {

    	System.out.println(dto.getName());
    	
        String URL = "http://localhost:8181/api/addSupplier";
   
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);

        HttpEntity<SupplierReqDTO> entity = new HttpEntity<>(dto, headers);

        boolean isAdded = restTemplate.postForObject(URL, entity, Boolean.class);

        return isAdded;
        
    }
    
}
