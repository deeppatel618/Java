package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.bean.WishlistData;
import com.util.ContactConnection;

public class WishlistDao {

	public static void Wishlist(int uid, int pid, String action) {
		if (action.equalsIgnoreCase("addTowishlist")) {
			System.out.println("if cond");
			System.out.println("uid=" + uid + "  pid=" + pid);
			try {
				Connection conn = ContactConnection.createConnection();
				PreparedStatement pst = conn.prepareStatement("insert into wishlist(pid,uid) values (?,?)");
				pst.setInt(1, pid);
				pst.setInt(2, uid);
				pst.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (action.equalsIgnoreCase("removefromwishlist")) {
			try {
				Connection conn = ContactConnection.createConnection();
				PreparedStatement pst = conn.prepareStatement("delete from wishlist where pid=? and uid=?");
				pst.setInt(1, pid);
				pst.setInt(2, uid);
				pst.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	public static boolean CheckingProductInWishlist(int pid, int uid) {
		boolean flag = false;
		try {
			Connection conn = ContactConnection.createConnection();
			PreparedStatement pst = conn.prepareStatement("Select * from wishlist where pid=? and uid=?");
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

	public static ArrayList<WishlistData> wishlistProductOfCustomer(int uid) {
		ArrayList<WishlistData> list = new ArrayList<WishlistData>();
		try {
			Connection conn = ContactConnection.createConnection();
			PreparedStatement pst = conn.prepareStatement("select * from wishlist where uid=?");
			pst.setInt(1, uid);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				WishlistData w=new WishlistData();
				w.setId(rs.getInt("id"));
				w.setPid(rs.getInt("pid"));
				w.setUid(rs.getInt("uid"));
				list.add(w);
			}
		} catch (Exception e) {
			e.printStackTrace(); // TODO: handle exception
		}
		return list;
	}

}
