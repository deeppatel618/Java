package com.dao;
import com.bean.ProductData;

import java.awt.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.spi.DirStateFactory.Result;

import com.util.ContactConnection;

public class ProductDao {
	public static void addProduct(ProductData p)
	{
		try {
			Connection conn=ContactConnection.createConnection();
			PreparedStatement pst=conn.prepareStatement("insert into product(productCategory,productName,productPrice,productSize,productColor,productDesc,productImage,seller) values (?,?,?,?,?,?,?,?)");
			pst.setString(1, p.getProductCategory());
			pst.setString(2, p.getProductName());
			pst.setInt(3, p.getproductPrice());
			pst.setString(4, p.getProductSize());
			pst.setString(5, p.getProductColor());
			pst.setString(6, p.getProductDesc());
			pst.setString(7, p.getProductImage());
			pst.setInt(8, p.getSellerId());
			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static ArrayList<ProductData> getAllProductBySeller(int id)
	{
		ArrayList<ProductData> list=new ArrayList<ProductData>();
		try {
			Connection conn=ContactConnection.createConnection();
			PreparedStatement pst=conn.prepareStatement("select * from product where seller=?");
			pst.setInt(1,id);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				ProductData p=new ProductData();
				System.out.println(rs.getInt("pid"));
				p.setPid(rs.getInt("pid"));
				p.setProductCategory(rs.getString("productCategory"));
				p.setProductName(rs.getString("productName"));
				p.setproductPrice(rs.getInt("productPrice"));
				p.setProductColor(rs.getString("productColor"));
				p.setProductSize(rs.getString("productSize"));
				p.setProductDesc(rs.getString("productDesc"));
				p.setProductImage(rs.getString("productImage"));
				p.setSellerId(id);
				list.add(p);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public static ProductData getProductBypid(int id)
	{
		ProductData p=null;
		try {
			Connection conn=ContactConnection.createConnection();
			PreparedStatement pst=conn.prepareStatement("select * from product where pid=?");
			pst.setInt(1,id);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				p=new ProductData();
				//System.out.println(rs.getInt("pid"));
				p.setPid(rs.getInt("pid"));
				p.setProductCategory(rs.getString("productCategory"));
				p.setProductName(rs.getString("productName"));
				p.setproductPrice(rs.getInt("productPrice"));
				p.setProductColor(rs.getString("productColor"));
				p.setProductSize(rs.getString("productSize"));
				p.setProductDesc(rs.getString("productDesc"));
				p.setProductImage(rs.getString("productImage"));
				p.setSellerId(id);
				
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return p;
	}
	public static void updateProductBypid(ProductData p)
	{
	
		try {
			Connection conn=ContactConnection.createConnection();
			PreparedStatement pst=conn.prepareStatement("update product set productCategory=?,productName=?,productPrice=?,productColor=?,productSize=?,productDesc=?,productImage=? where pid=?");
			pst.setString(1, p.getProductCategory());
			pst.setString(2, p.getProductName());
			pst.setInt(3, p.getproductPrice());
			pst.setString(5, p.getProductSize());
			pst.setString(4, p.getProductColor());
			pst.setString(6, p.getProductDesc());
			pst.setString(7, p.getProductImage());
			pst.setInt(8,p.getPid());
			pst.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
	public static void deleteProductByPid(int pid)
	{
		try {
			Connection conn=ContactConnection.createConnection();
			PreparedStatement pst=conn.prepareStatement("delete from product where pid=?");
			pst.setInt(1, pid);
			pst.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	public static ArrayList<ProductData> getAllProduct()
	{
		ArrayList<ProductData> list=new ArrayList<ProductData>();
		try {
			Connection conn=ContactConnection.createConnection();
			PreparedStatement pst=conn.prepareStatement("select * from product");
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				ProductData p=new ProductData();
				//System.out.println(rs.getInt("pid"));
				p.setPid(rs.getInt("pid"));
				p.setProductCategory(rs.getString("productCategory"));
				p.setProductName(rs.getString("productName"));
				p.setproductPrice(rs.getInt("productPrice"));
				p.setProductColor(rs.getString("productColor"));
				p.setProductSize(rs.getString("productSize"));
				p.setProductDesc(rs.getString("productDesc"));
				p.setProductImage(rs.getString("productImage"));
				p.setSellerId(rs.getInt("seller"));
				list.add(p);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public static ArrayList<ProductData> getAllProduct(String category)
	{
		ArrayList<ProductData> list=new ArrayList<ProductData>();
		try {
			Connection conn=ContactConnection.createConnection();
			PreparedStatement pst=conn.prepareStatement("select * from product where productCategory=?");
			pst.setString(1, category);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				ProductData p=new ProductData();
				//System.out.println(rs.getInt("pid"));
				p.setPid(rs.getInt("pid"));
				p.setProductCategory(rs.getString("productCategory"));
				p.setProductName(rs.getString("productName"));
				p.setproductPrice(rs.getInt("productPrice"));
				p.setProductColor(rs.getString("productColor"));
				p.setProductSize(rs.getString("productSize"));
				p.setProductDesc(rs.getString("productDesc"));
				p.setProductImage(rs.getString("productImage"));
				p.setSellerId(rs.getInt("seller"));
				list.add(p);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
}