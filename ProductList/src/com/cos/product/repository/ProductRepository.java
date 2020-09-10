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

	private ProductRepository() {
	}

	public static ProductRepository getInstance() {
		return instance;
	}

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	public int deleteById(int id) {
		final String SQL = "DELETE FROM product WHERE id = ?";

		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			// 물음표 완성하기
			pstmt.setInt(1, id);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "deleteById : " + e.getMessage());
		} finally {
			DBConn.close(conn, pstmt);
		}
		return -1;
	}
	
	public List<Product> orderByCount() {
		final String SQL = "SELECT id, name, price, type, count FROM product ORDER BY count DESC";
		List<Product> products = new ArrayList<>();

		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Product product = new Product(
						rs.getInt("id"), 
						rs.getString("name"), 
						rs.getInt("price"),
						rs.getString("type"), 
						rs.getInt("count")
						);
				products.add(product);
			}
			return products;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "orderByCount : " + e.getMessage());
		} finally {
			DBConn.close(conn, pstmt, rs);
		}
		return null;
	}

	public List<Product> orderByPrice() {
		final String SQL = "SELECT id, name, price, type, count FROM product ORDER BY price DESC";
		List<Product> products = new ArrayList<>();

		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Product product = new Product
						(
						rs.getInt("id"), 
						rs.getString("name"), 
						rs.getInt("price"),
						rs.getString("type"), 
						rs.getInt("count")
						);
				products.add(product);
			}
			return products;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "orderByPrice : " + e.getMessage());
		} finally {
			DBConn.close(conn, pstmt, rs);
		}
		return null;
	}

	public List<Product> findAll() {
		final String SQL = "SELECT id, name, price, type, count FROM product ORDER BY id ASC";
		List<Product> products = new ArrayList<>();

		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Product product = new Product(rs.getInt("id"), rs.getString("name"), rs.getInt("price"),
						rs.getString("type"), rs.getInt("count"));
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
