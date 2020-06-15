package com.cos.product.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.cos.product.db.DBConn;
import com.cos.product.model.Product;

public class ProductRepository {
	private static final String TAG = "ProductRepository : ";
	private static ProductRepository instance = new ProductRepository();
	private ProductRepository() {}
	public static ProductRepository getInstance() {
		return instance;
	}
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public List<Product> findAll() {
		final String SQL = "SELECT * FROM product ORDER BY id DESC"; 
		List<Product> products = new ArrayList<>();
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Product product = new Product(
						rs.getInt("id"),
						rs.getString("name"),
						rs.getString("price"),
						rs.getString("type"),
						rs.getInt("count")
				);
				products.add(product);
			}
			return products;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "findAll : " + e.getMessage());
		} finally {
			DBConn.close(conn, pstmt, rs);
		}
		return null;
	}
}
