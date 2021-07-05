<%@page import="com.bean.ProductData"%>
<%@page import="com.dao.ProductDao"%>
<%@page import="com.dao.CartDao"%>
<%@page import="com.bean.CartData"%>
<%@page import="com.dao.WishlistDao"%>
<%@page import="com.bean.WishlistData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bean.UserData"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Meta Tag -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name='copyright' content=''>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Title Tag  -->
<title>Eshop - eCommerce HTML5 Template.</title>
<!-- Favicon -->
<link rel="icon" type="image/png" href="images/favicon.png">
<!-- Web Font -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap"
	rel="stylesheet">

<!-- StyleSheet -->

<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="css/magnific-popup.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="css/font-awesome.css">
<!-- Fancybox -->
<link rel="stylesheet" href="css/jquery.fancybox.min.css">
<!-- Themify Icons -->
<link rel="stylesheet" href="css/themify-icons.css">
<!-- Nice Select CSS -->
<link rel="stylesheet" href="css/niceselect.css">
<!-- Animate CSS -->
<link rel="stylesheet" href="css/animate.css">
<!-- Flex Slider CSS -->
<link rel="stylesheet" href="css/flex-slider.min.css">
<!-- Owl Carousel -->
<link rel="stylesheet" href="css/owl-carousel.css">
<!-- Slicknav -->
<link rel="stylesheet" href="css/slicknav.min.css">

<!-- Eshop StyleSheet -->
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="css/responsive.css">
<meta charset="ISO-8859-1">

</head>

<body>
	<%
		UserData u = null;
	ArrayList<WishlistData> wlist=null;
	ArrayList<CartData> clist=null;
	int itemsInWishlist=0,itemsIncart=0;
		if (session != null) {
			if (session.getAttribute("u") != null) {
				out.print(session.getId());
				u = (UserData) session.getAttribute("u");
				 wlist =WishlistDao.wishlistProductOfCustomer(u.getId());
				 clist =CartDao.cartProductOfCustomer(u.getId());
				itemsIncart=clist.size();
				itemsInWishlist=wlist.size();
			}
				
		}
	%>
	<!-- Header -->
	<header class="header shop">
		<!-- Topbar -->
		<div class="topbar">
			<div class="container">
				<div class="row">
					<div class="col-lg-5 col-md-12 col-12">
						<!-- Top Left -->
						<div class="top-left">
							<ul class="list-main">
								<li><i class="ti-headphone-alt"></i> +060 (800) 801-582</li>
								<li><i class="ti-email"></i> support@shophub.com</li>
							</ul>
						</div>
						<!--/ End Top Left -->
					</div>
					<div class="col-lg-7 col-md-12 col-12">
						<!-- Top Right -->
						<div class="right-content">
							<ul class="list-main">
								<li><i class="ti-location-pin"></i> Store location</li>
								<li><i class="ti-alarm-clock"></i> <a href="#">Daily
										deal</a></li>

								<%
									if (u != null) {
								%>
								<li><i class="ti-user"></i> <a href="Myaccount.jsp">My account</a></li>
								<li><i class="ti-user"></i><a href="ChangePassword.jsp">Change passowrd</a></li>
								<li><i class="ti-power-off"></i><a href="Logout.jsp">Logout</a></li>
								<%
									} else {
								%>
								<li><i class="ti-power-off"></i><a href="Login.jsp">LogIn</a></li>
								<%
									}
								%>
							</ul>
						</div>
						<!-- End Top Right -->
					</div>
				</div>
			</div>
		</div>
		<!-- End Topbar -->
		<div class="middle-inner">
			<div class="container">
				<div class="row">
					<div class="col-lg-2 col-md-2 col-12">
						<!-- Logo -->
						<div class="logo">
							<a href="index.jsp"><img src="images/logo.png" alt="logo"></a>
						</div>
						<!--/ End Logo -->
						<!-- Search Form -->
						<div class="search-top">
							<div class="top-search">
								<a href="#0"><i class="ti-search"></i></a>
							</div>
							<!-- Search Form -->
							<div class="search-top">
								<form class="search-form">
									<input type="text" placeholder="Search here..." name="search">
									<button value="search" type="submit">
										<i class="ti-search"></i>
									</button>
								</form>
							</div>
							<!--/ End Search Form -->
						</div>
						<!--/ End Search Form -->
						<div class="mobile-nav"></div>
					</div>
					<div class="col-lg-8 col-md-7 col-12">
						<div class="search-bar-top">
							<div class="search-bar">

								<form>
									<input name="search" placeholder="Search Products Here....."
										type="search">
									<button class="btnn">
										<i class="ti-search"></i>
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-12">
						<div class="right-bar">
							<!-- Search Form -->
							<div class="sinlge-bar">
								<a href="myWishlist.jsp" class="single-icon"><i class="fa fa-heart-o"
									aria-hidden="true"></i><span
									class="total-count"><%=itemsInWishlist %></span></a>
							</div>
							<div class="sinlge-bar">
								<a href="#" class="single-icon"><i
									class="fa fa-user-circle-o" aria-hidden="true"></i></a>
							</div>
							<div class="sinlge-bar shopping">
								<a href="Mycart.jsp" class="single-icon"><i class="ti-bag"></i> <span
									class="total-count"><%=itemsIncart %></span></a>
								<!-- Shopping Item -->
								<div class="shopping-item">
									<div class="dropdown-cart-header">
										<span><%=itemsIncart %> Items</span> <a href="#">View Cart</a>
									</div>
									<ul class="shopping-list">
									<%if(u!=null)
									{
									int TotalPrice=0;
									for(CartData c:clist) {
										TotalPrice += c.getTotalPrice();
										ProductData p=ProductDao.getProductBypid(c.getPid());
									%>
									
										<li><a href="AddToCart.jsp?pid=<%=p.getPid()%>&uid=<%=u.getId()%>&action=removefromcart" class="remove" title="Remove this item"><i
												class="fa fa-remove"></i></a> <a class="cart-img" href="#"><img
												src="images/ProductImages/<%=p.getProductImage()%>" alt="#"></a>
											<h4>
												<a href="#"><%=p.getProductName() %></a>
											</h4>
											<p class="quantity">
												<%=c.getQty() %>x - <span class="amount">Rs.<%=p.getproductPrice() %></span>
											</p></li>
											<%} %>
										
									</ul>
									<div class="bottom">
										<div class="total">
											<span>Total</span> <span class="total-amount">Rs.<%=TotalPrice %></span>
										</div>
										<a href="checkout.jsp" class="btn animate">Checkout</a>
									</div>
									<%} %>
								</div>
								<!--/ End Shopping Item -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Header Inner -->
		<div class="header-inner">
			<div class="container">
				<div class="cat-nav-head">
					<div class="row">

						<div class="col-lg-9 col-12">
							<div class="menu-area">
								<!-- Main Menu -->
								<nav class="navbar navbar-expand-lg">
									<div class="navbar-collapse">
										<div class="nav-inner">
											<ul class="nav main-menu menu navbar-nav">
												<li class="active"><a href="index.jsp">Home</a></li>
												<li><a href="#">Product</a></li>
												<li><a href="#">Service</a></li>
												<li><a href="#">Shop<i class="ti-angle-down"></i><span
														class="new">New</span></a>
													<ul class="dropdown">
														<li><a href="cart.jsp">Cart</a></li>
														<li><a href="checkout.jsp">Checkout</a></li>
													</ul></li>
												<li><a href="#">Pages</a></li>
												<li><a href="#">Blog<i class="ti-angle-down"></i></a>
													<ul class="dropdown">
														<li><a href="blog-single-sidebar.jsp">Blog Single
																Sidebar</a></li>
													</ul></li>
												<li><a href="contact.jsp">Contact Us</a></li>
											</ul>
										</div>
									</div>
								</nav>
								<!--/ End Main Menu -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/ End Header Inner -->
	</header>
</body>
</html>