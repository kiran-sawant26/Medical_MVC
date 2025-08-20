package com.rt.Service;

import java.util.List;

import com.rt.UserDTO.BrandReqDTO;
import com.rt.UserDTO.BrandRespDTO;

public interface BrandService {

	public boolean saveBrand(BrandReqDTO reqDto);

	public List<BrandRespDTO> getAllBrand();

	public BrandRespDTO editBrand(int id);

	public boolean updateBrand(BrandRespDTO respDto);

	

	
}
