package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.bean.CartData;
import com.bean.ProductData;
import com.bean.WishlistData;
import com.util.ContactConnection;

public class CartDao {

	public static void Cart(int uid, int pid, String action) {
		ProductData p=ProductDao.getProductBypid(pid);
		if (action.equalsIgnoreCase("addtocart")) {
			System.out.println("if cond cart");
			System.out.println("uid=" + uid + "  pid=" + pid);
			try {
				Connection conn = ContactConnection.createConnection();
				PreparedStatement pst = conn.prepareStatement("insert into Cart(pid,uid,qty,price,totalPrice) values (?,?,?,?,?)");
				pst.setInt(1, pid);
				pst.setInt(2, uid);
				pst.setInt(3, 1);
				pst.setInt(4, p.getproductPrice());
				pst.setInt(5, p.getproductPrice());
				pst.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (action.equalsIgnoreCase("removefromcart")) {
			try {
				Connection conn = ContactConnection.createConnection();
				PreparedStatement pst = conn.prepareStatement("delete from cart where pid=? and uid=?");
				pst.setInt(1, pid);
				pst.setInt(2, uid);
				pst.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	public static boolean CheckingProductInCart(int pid, int uid) {
		boolean flag = false;
		try {
			Connection conn = ContactConnection.createConnection();
			PreparedStatement pst = conn.prepareStatement("Select * from cart where pid=? and uid=?");
			pst.setInt(1, pid);
			pst.setInt(2, uid);
			ResultSet rs = pst.executeQuery();
			if (rs.next())
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

	public static ArrayList<CartData> cartProductOfCustomer(int uid) {
		ArrayList<CartData> list = new ArrayList<CartData>();
		try {
			Connection conn = ContactConnection.createConnection();
			PreparedStatement pst = conn.prepareStatement("select * from cart where uid=?");
			pst.setInt(1, uid);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				CartData w=new CartData();
				w.setId(rs.getInt("id"));
				w.setPid(rs.getInt("pid"));
				w.setUid(rs.getInt("uid"));
				w.setQty(rs.getInt("qty"));
				w.setTotalPrice(rs.getInt("totalPrice"));
				w.setPrice(rs.getInt("price"));
				list.add(w);
			}
		} catch (Exception e) {
			e.printStackTrace(); // TODO: handle exception
		}
		return list;
	}
	public static void updatecart(CartData c)
	{
		try {
			Connection conn = ContactConnection.createConnection();
			PreparedStatement pst = conn.prepareStatement("update cart set qty=?,totalPrice=? where uid=? and pid=?");
			pst.setInt(1, c.getQty());
			pst.setInt(2, c.getTotalPrice());
			pst.setInt(3,c.getUid());
			pst.setInt(4, c.getPid());
			pst.executeUpdate();
		} catch (Exception e) {
			 e.printStackTrace();// TODO: handle exception
		}
		}

}
