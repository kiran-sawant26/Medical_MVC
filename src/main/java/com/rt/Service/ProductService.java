package com.rt.Service;

import java.util.List;

import org.springframework.http.ResponseEntity;

import com.rt.UserDTO.ProductReqDTO;
import com.rt.UserDTO.ProductResponseDto;

public interface ProductService {

	 boolean addProduct(ProductReqDTO productReqDTO);


	ProductResponseDto getProductById(Long id);

	boolean updateProduct(ProductReqDTO reqDto);

	ResponseEntity<Boolean> deleteproduct(int id);

	List<ProductResponseDto> getPaginatedProducts(int page, int size);
	

}
