<%@page import="com.dao.WishlistDao"%>
<%@page import="com.bean.WishlistData"%>
<%@page import="com.dao.ProductDao"%>
<%@page import="com.bean.ProductData"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
<%@ include file="Header.jsp"%>
</head>

<body class="js">
	<!--/ End Header -->
	</section>
	<!--/ End Slider Area -->
	<!-- Start Product Area -->
	<div class="product-area section">
		<div class="container">

			<div class="row">
				<div class="col-12">
					<div class="product-info">

						<div class="tab-content" id="myTabContent">
							<!-- Start Single Tab -->
							<div class="tab-pane fade show active" id="man" role="tabpanel">
								<div class="tab-single">
									<div class="row">

										<%
											if (wlist.size() > 0) {
												for (WishlistData w : wlist) {
													ProductData p = ProductDao.getProductBypid(w.getPid());
										%>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="productDetailsForCustomer.jsp?pid=<%=p.getPid()%>"> <img class="default-img"
														src="images/ProductImages/<%=p.getProductImage()%>"
														alt="#" style="width: 200px; height: 300px;"> <img
														class="hover-img"
														src="images/ProductImages/<%=p.getProductImage()%>"
														alt="#" style="width: 200px; height: 300px;">
													</a>

												</div>
												<div class="product-content">
													<h3>
														<a href="productDetailsForCustomer.jsp?pid=<%=p.getPid()%>"><%=p.getProductName()%></a>
													</h3>
													<div class="product-price">
														<span>Rs.<%=p.getproductPrice()%></span>
													</div>
												</div>
											</div>
											<a href="productDetailsForCustomer.jsp?pid=<%=p.getPid()%>"><input
												type="button" name="btn" value="view details"
												class="btn btn-primary"></a>
										</div>
										<%
											}
											} else {
										%>
										<div class="col-12">
											<div class="section-title">
												<h2>No Items in WishList</h2>
											</div>
										</div>
										<%
											}
										%>




									</div>
								</div>
							</div>
							<!--/ End Single Tab -->
							<!-- Start Single Tab -->
							<div class="tab-pane fade" id="women" role="tabpanel">
								<div class="tab-single">
									<div class="row">
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#">
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Women Hot Collection</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#">
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Awesome Pink Show</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#">
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Awesome Bags Collection</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#"> <span
														class="new">New</span>
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Women Pant Collectons</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#">
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Awesome Bags Collection</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#"> <span
														class="price-dec">30% Off</span>
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Awesome Cap For Women</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#">
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Polo Dress For Women</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#"> <span
														class="out-of-stock">Hot</span>
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Black Sunglass For Women</a>
													</h3>
													<div class="product-price">
														<span class="old">$60.00</span> <span>$50.00</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--/ End Single Tab -->
							<!-- Start Single Tab -->
							<div class="tab-pane fade" id="kids" role="tabpanel">
								<div class="tab-single">
									<div class="row">
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#">
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Women Hot Collection</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#">
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Awesome Pink Show</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#">
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Awesome Bags Collection</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#"> <span
														class="new">New</span>
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Women Pant Collectons</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#">
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Awesome Bags Collection</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#"> <span
														class="price-dec">30% Off</span>
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Awesome Cap For Women</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#">
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Polo Dress For Women</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#"> <span
														class="out-of-stock">Hot</span>
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Black Sunglass For Women</a>
													</h3>
													<div class="product-price">
														<span class="old">$60.00</span> <span>$50.00</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--/ End Single Tab -->
							<!-- Start Single Tab -->
							<div class="tab-pane fade" id="accessories" role="tabpanel">
								<div class="tab-single">
									<div class="row">
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#">
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Women Hot Collection</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#">
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Awesome Pink Show</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#">
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Awesome Bags Collection</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#"> <span
														class="new">New</span>
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Women Pant Collectons</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#">
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Awesome Bags Collection</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#"> <span
														class="price-dec">30% Off</span>
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Awesome Cap For Women</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#">
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Polo Dress For Women</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#"> <span
														class="out-of-stock">Hot</span>
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Black Sunglass For Women</a>
													</h3>
													<div class="product-price">
														<span class="old">$60.00</span> <span>$50.00</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--/ End Single Tab -->
							<!-- Start Single Tab -->
							<div class="tab-pane fade" id="essential" role="tabpanel">
								<div class="tab-single">
									<div class="row">
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#">
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Women Hot Collection</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#">
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Awesome Pink Show</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#">
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Awesome Bags Collection</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#"> <span
														class="new">New</span>
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Women Pant Collectons</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#">
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Awesome Bags Collection</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#"> <span
														class="price-dec">30% Off</span>
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Awesome Cap For Women</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#">
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Polo Dress For Women</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#"> <span
														class="out-of-stock">Hot</span>
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Black Sunglass For Women</a>
													</h3>
													<div class="product-price">
														<span class="old">$60.00</span> <span>$50.00</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--/ End Single Tab -->
							<!-- Start Single Tab -->
							<div class="tab-pane fade" id="prices" role="tabpanel">
								<div class="tab-single">
									<div class="row">
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#">
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Women Hot Collection</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#">
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Awesome Pink Show</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#">
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Awesome Bags Collection</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#"> <span
														class="new">New</span>
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Women Pant Collectons</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#">
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Awesome Bags Collection</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#"> <span
														class="price-dec">30% Off</span>
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Awesome Cap For Women</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#">
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Polo Dress For Women</a>
													</h3>
													<div class="product-price">
														<span>$29.00</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xl-3 col-lg-4 col-md-4 col-12">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.jsp"> <img class="default-img"
														src="https://via.placeholder.com/550x750" alt="#"> <img
														class="hover-img"
														src="https://via.placeholder.com/550x750" alt="#"> <span
														class="out-of-stock">Hot</span>
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal"
																title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick
																	Shop</span></a> <a title="Wishlist" href="#"><i
																class=" ti-heart "></i><span>Add to Wishlist</span></a> <a
																title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add
																	to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3>
														<a href="product-details.jsp">Black Sunglass For Women</a>
													</h3>
													<div class="product-price">
														<span class="old">$60.00</span> <span>$50.00</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--/ End Single Tab -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Product Area -->









	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span class="ti-close" aria-hidden="true"></span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row no-gutters">
						<div class="col-lg-6 offset-lg-3 col-12">
							<h4
								style="margin-top: 100px; font-size: 14px; font-weight: 500; color: #F7941D; display: block; margin-bottom: 5px;">Eshop
								Free Lite</h4>
							<h3 style="font-size: 30px; color: #333;">
								Currently You are using free lite Version of Eshop.
								<h3>
									<p
										style="display: block; margin-top: 20px; color: #888; font-size: 14px; font-weight: 400;">Please,
										purchase full version of the template to get all pages,
										features and commercial license</p>
									<div class="button" style="margin-top: 30px;">
										<a
											href="https://wpthemesgrid.com/downloads/eshop-ecommerce-html5-template/"
											target="_blank" class="btn" style="color: #fff;">Buy Now!</a>
									</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal end -->

	<!-- Start Footer Area -->
	<footer class="footer">
		<!-- Footer Top -->
		<div class="footer-top section">
			<div class="container">
				<div class="row">
					<div class="col-lg-5 col-md-6 col-12">
						<!-- Single Widget -->
						<div class="single-footer about">
							<div class="logo">
								<a href="index.jsp"><img src="images/logo2.png" alt="#"></a>
							</div>
							<p class="text">Praesent dapibus, neque id cursus ucibus,
								tortor neque egestas augue, magna eros eu erat. Aliquam erat
								volutpat. Nam dui mi, tincidunt quis, accumsan porttitor,
								facilisis luctus, metus.</p>
							<p class="call">
								Got Question? Call us 24/7<span><a href="tel:123456789">+0123
										456 789</a></span>
							</p>
						</div>
						<!-- End Single Widget -->
					</div>
					<div class="col-lg-2 col-md-6 col-12">
						<!-- Single Widget -->
						<div class="single-footer links">
							<h4>Information</h4>
							<ul>
								<li><a href="#">About Us</a></li>
								<li><a href="#">Faq</a></li>
								<li><a href="#">Terms & Conditions</a></li>
								<li><a href="#">Contact Us</a></li>
								<li><a href="#">Help</a></li>
							</ul>
						</div>
						<!-- End Single Widget -->
					</div>
					<div class="col-lg-2 col-md-6 col-12">
						<!-- Single Widget -->
						<div class="single-footer links">
							<h4>Customer Service</h4>
							<ul>
								<li><a href="#">Payment Methods</a></li>
								<li><a href="#">Money-back</a></li>
								<li><a href="#">Returns</a></li>
								<li><a href="#">Shipping</a></li>
								<li><a href="#">Privacy Policy</a></li>
							</ul>
						</div>
						<!-- End Single Widget -->
					</div>
					<div class="col-lg-3 col-md-6 col-12">
						<!-- Single Widget -->
						<div class="single-footer social">
							<h4>Get In Tuch</h4>
							<!-- Single Widget -->
							<div class="contact">
								<ul>
									<li>NO. 342 - London Oxford Street.</li>
									<li>012 United Kingdom.</li>
									<li>info@eshop.com</li>
									<li>+032 3456 7890</li>
								</ul>
							</div>
							<!-- End Single Widget -->
							<ul>
								<li><a href="#"><i class="ti-facebook"></i></a></li>
								<li><a href="#"><i class="ti-twitter"></i></a></li>
								<li><a href="#"><i class="ti-flickr"></i></a></li>
								<li><a href="#"><i class="ti-instagram"></i></a></li>
							</ul>
						</div>
						<!-- End Single Widget -->
					</div>
				</div>
			</div>
		</div>
		<!-- End Footer Top -->
		<div class="copyright">
			<div class="container">
				<div class="inner">
					<div class="row">
						<div class="col-lg-6 col-12">
							<div class="left">
								<p>
									Copyright � 2020 <a href="http://www.wpthemesgrid.com"
										target="_blank">Wpthemesgrid</a> - All Rights Reserved.
								</p>
							</div>
						</div>
						<div class="col-lg-6 col-12">
							<div class="right">
								<img src="images/payments.png" alt="#">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- /End Footer Area -->

	<!-- Jquery -->
	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.0.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<!-- Popper JS -->
	<script src="js/popper.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Color JS -->
	<script src="js/colors.js"></script>
	<!-- Slicknav JS -->
	<script src="js/slicknav.min.js"></script>
	<!-- Owl Carousel JS -->
	<script src="js/owl-carousel.js"></script>
	<!-- Magnific Popup JS -->
	<script src="js/magnific-popup.js"></script>
	<!-- Waypoints JS -->
	<script src="js/waypoints.min.js"></script>
	<!-- Countdown JS -->
	<script src="js/finalcountdown.min.js"></script>
	<!-- Nice Select JS -->
	<script src="js/nicesellect.js"></script>
	<!-- Flex Slider JS -->
	<script src="js/flex-slider.js"></script>
	<!-- ScrollUp JS -->
	<script src="js/scrollup.js"></script>
	<!-- Onepage Nav JS -->
	<script src="js/onepage-nav.min.js"></script>
	<!-- Easing JS -->
	<script src="js/easing.js"></script>
	<!-- Active JS -->
	<script src="js/active.js"></script>
</body>
</html>