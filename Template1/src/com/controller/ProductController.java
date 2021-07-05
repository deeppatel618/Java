package com.controller;

import java.io.File;
import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.bean.ProductData;
import com.dao.ProductDao;


@WebServlet("/ProductController")
@MultipartConfig(fileSizeThreshold = 1024*1024*512, maxFileSize = 1024*1024*512,maxRequestSize = 1024*1024*512)
public class ProductController extends HttpServlet {
		
		private String extractFileName(Part file)
		{
			String cd=file.getHeader("content-disposition");
			System.out.println(cd);
			String[] items=cd.split(";");
			for(String string:items)
			{
				if(string.trim().startsWith("filename"))
				{
					return string.substring(string.indexOf("=")+2, string.length()-1);
				}
			}
			return "";
		}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		if(action.equalsIgnoreCase("addProduct"))
		{
			String savePath="D:\\Java\\Template1\\WebContent\\images\\ProductImages";
			File filesaveDir=new File(savePath);
			if(!filesaveDir.exists())
				filesaveDir.mkdir();//if no such directory exists then it will create new one
			
			Part file1=request.getPart("productImage");//requesting image from addproduct.jsp
			String filename=extractFileName(file1);
			file1.write(savePath+File.separator+filename);//here file separator is // which is added into save path so we can save image in the folder;
			 
			ProductData p=new ProductData();
			p.setProductCategory(request.getParameter("productCategories"));
			p.setProductName(request.getParameter("productName"));
			p.setproductPrice(Integer.parseInt(request.getParameter("productPrice")));
			p.setProductColor(request.getParameter("productColor"));
			p.setProductSize(request.getParameter("productSize"));
			p.setProductDesc(request.getParameter("productDesc"));
			p.setProductImage(filename);
			p.setSellerId(Integer.parseInt(request.getParameter("id")));
			ProductDao.addProduct(p);
			request.setAttribute("msg", "Product added successfully");
			request.getRequestDispatcher("addProduct.jsp").forward(request, response);
		}
		else if(action.equalsIgnoreCase("UpdateProductDetails"))
		{
			ProductData p=new ProductData();
			p.setPid(Integer.parseInt(request.getParameter("pid")));
			p.setProductCategory(request.getParameter("productCategories"));
			p.setProductName(request.getParameter("productName"));
			p.setproductPrice(Integer.parseInt(request.getParameter("productPrice")));
			p.setProductColor(request.getParameter("productColor"));
			p.setProductSize(request.getParameter("productSize"));
			p.setProductDesc(request.getParameter("productDesc"));
			
			p.setSellerId(Integer.parseInt(request.getParameter("Sellerid")));
			try {
				String savePath="D:\\Java\\Template1\\WebContent\\images\\ProductImages";
				File filesaveDir=new File(savePath);
				if(!filesaveDir.exists())
					filesaveDir.mkdir();//if no such directory exists then it will create new one
				
				Part file1=request.getPart("productImage");//requesting image from addproduct.jsp
				String filename=extractFileName(file1);
				file1.write(savePath+File.separator+filename);//here file separator is // which is added into save path so we can save image in the folder;
				p.setProductImage(filename);
				File filesaveDirDEL=new File("D:\\Java\\Template1\\WebContent\\images\\ProductImages"+File.separator+request.getParameter("oldImage"));
				filesaveDirDEL.delete();
			} catch (Exception e) {
				p.setProductImage(request.getParameter("oldImage"));
							}
			ProductDao.updateProductBypid(p);
			response.sendRedirect("viewProduct.jsp");
			
		}
	}

}
