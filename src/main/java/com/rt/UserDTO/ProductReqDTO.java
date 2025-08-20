package com.rt.UserDTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductReqDTO {

	private int id;
	    private String name;
	    private String brand;
	    private String category;
	    private String batchNo;
	    private String mfgDate;       // You can also use LocalDate
	    private String expDate;
	    private String purchaseRate;
	    private String sellingRate;
	    private String quantity;
	    private String gst;
	    private String rackNo;
	
	
}
