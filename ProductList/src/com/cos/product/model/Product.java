package com.cos.product.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder

public class Product {
	private int id;
	private String name;
	private String price;
	private String type;
	private int count;
}
