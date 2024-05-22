<%@page import="bean.khachhangbean"%>
<%@page import="bean.nuochoabean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <link rel="icon" href="img/favicon.png" type="image/png" />
  <title>Home</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="css/bootstrap.css" />
  <link rel="stylesheet" href="vendors/linericon/style.css" />
  <link rel="stylesheet" href="css/font-awesome.min.css" />
  <link rel="stylesheet" href="css/themify-icons.css" />
  <link rel="stylesheet" href="css/flaticon.css" />
  <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css" />
  <link rel="stylesheet" href="vendors/lightbox/simpleLightbox.css" />
  <link rel="stylesheet" href="vendors/nice-select/css/nice-select.css" />
  <link rel="stylesheet" href="vendors/animate-css/animate.css" />
  <link rel="stylesheet" href="vendors/jquery-ui/jquery-ui.css" />
  <!-- main css -->
  <link rel="stylesheet" href="css/style.css" />
  <link rel="stylesheet" href="css/responsive.css" />
  <style>
.img-fluid {
    max-width: 100%;
    height: 253.4px;
}
.img-new {
    width: 100%;
    height: 400px;
    background-repeat: no-repeat;
    background-size: contain;
}
.new_product .product-img {
    padding: 33px 0px;
}
.new_product {
    background: #f6f6f6;
    padding: 70px 15px;
    text-align: center;
}
.slmua {
		color: #000;
	}
	
</style>
</head>

<body>
  <!--================Header Menu Area =================-->
  <header class="header_area">
    <div class="top_menu">
      <div class="container">
        <div class="row">
          <div class="col-lg-7">
            <div class="float-left">
              <p>Phone: +0788505110</p>
              <p>email: 20T1020078@husc.edu.com</p>
            </div>
          </div>
          <div class="col-lg-5">
            <div class="float-right">
              <ul class="right_side">
                <li>
                  <a href="gioController">
                    Giỏ Hàng
                  </a>
                </li>
                <li>
                  <a href="tracking.html">
                    track order
                  </a>
                </li>
                <li>
                  <a href="contact.html">
                    Contact Us
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="main_menu">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg navbar-light w-100">
          <!-- Brand and toggle get grouped for better mobile display -->
          <a class="navbar-brand logo_h" href="index.html">
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse offset w-100" id="navbarSupportedContent">
            <div class="row w-100 mr-0">
              <div class="col-lg-5 pr-0">
                <ul class="nav navbar-nav center_nav pull-right">
                  <li class="nav-item active">
                    <a class="nav-link" href="homeController">Trang Chủ</a>
                  </li>
                   <li class="nav-item ">
                    <a class="nav-link" href="nuochoaController">Loại Sản Phẩm</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="lichsuController">Lịch Sử Mua Hàng</a>
                  </li>
                 
                </ul>
              </div>
			<div class="col-lg-3 pr-0"><form class="form-inline" action="nuochoaController">
    			<input class="form-control mr-sm-2" type="search" placeholder="Tìm Kiếm" aria-label="Search" name="txttim">
    			<button class="btn btn-primary my-2 my-sm-0" type="submit" name="th">Tìm Kiếm</button>
  			</form></div>
              <div class="col-lg-4 pr-0">
                <ul class="nav navbar-nav navbar-right right_nav pull-right">                  
				
               <li class="nav-item">
               
               <%
		long dem=0;
		if(session.getAttribute("dem")!=null)
		{dem = (long) session.getAttribute("dem");}
		%>
		
                    <a href="gioController" class="icons">
                     <i class="ti-shopping-cart"></i><%if(dem>0){ %><span class="slmua">(<%=dem%>)</span><%}%> GIỎ HÀNG
                    </a>
                  </li>
				<%
				khachhangbean kh = (khachhangbean) session.getAttribute("dn");
				if(kh==null){
			%>
                  <li class="nav-item">
                    <a href="dangnhapController" class="icons" >
                      ĐĂNG NHẬP
                    </a>
                    <a href="dangkyController" class="icons" >
                      ĐĂNG KÝ
                    </a>
                    <%} else{ %>
					<a href="#" class="icons" style = "font-size: 13px">
                      Xin Chào <%=kh.getHoten() %>
                    </a>
					<a href="dangxuatController" class="icons" style = "font-size: 13px" >
                      ĐĂNG XUẤT
                    </a>
			<%} %>	
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </nav>
      </div>
    </div>
  </header>
  <!--================Header Menu Area =================-->

  <!--================Home Banner Area =================-->
  <section class="home_banner_area mb-40">
    <div class="banner_inner d-flex align-items-center">
      <div class="container">
        <div class="banner_content row">
          <div class="col-lg-12">
            <p class="sub text-uppercase">Nước Hoa Cổ Điển</p>
            <h3><span>Hương</span> Thơm <br />Hiện <span>Đại</span></h3>
            <h4>Tạo Dấu Ấn Khó Phai</h4>
            <a class="main_btn mt-40" href="#">Mua Ngay</a>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--================End Home Banner Area =================-->

  <!-- Start feature Area -->
  <section class="feature-area section_gap_bottom_custom">
    <div class="container">
      <div class="row">
        <div class="col-lg-3 col-md-6">
          <div class="single-feature">
            <a href="nuochoaController" class="title">
              <i class="flaticon-money"></i>
              <h3>Ưu Đãi Giảm Giá</h3>
            </a>
            <p>Phù hợp với túi tiền của bạn , mua ngay để trải nghiệm</p>
          </div>
        </div>

        <div class="col-lg-3 col-md-6">
          <div class="single-feature">
            <a href="#" class="title">
              <i class="flaticon-truck"></i>
              <h3>Miễn Phí Giao Hàng</h3>
            </a>
            <p>Miễn phí giao hàng với các đơn trị giá trên 500.000 đồng</p>
          </div>
        </div>

        <div class="col-lg-3 col-md-6">
          <div class="single-feature">
            <a href="#" class="title">
              <i class="flaticon-support"></i>
              <h3>TƯ VẤN CHUYÊN NGHIỆP</h3>
            </a>
            <p>Mong muốn mang đến sự hài lòng nhất cho quý khách hàng</p>
          </div>
        </div>

        <div class="col-lg-3 col-md-6">
          <div class="single-feature">
            <a href="#" class="title">
              <i class="flaticon-blockchain"></i>
              <h3>CHÍNH HÃNG 100%</h3>
            </a>
            <p>Chúng tôi cam kết chỉ cung ứng các sản phẩm chính hãng</p>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End feature Area -->

  <!--================ Khu Vực Sản Phẩm Đặc Trưng =================-->
  <section class="feature_product_area section_gap_bottom_custom">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-12">
          <div class="main_title">
            <h2><span>Sản Phẩm Nổi Bật</span></h2>
            <p>Hãy Mua Ngay Trải Nghiệm Ngay Bây Giờ</p>
          </div>
        </div>
      </div>

      <div class="row">
      <%
                            ArrayList<nuochoabean> ds;
        					if(request.getAttribute("dssach")!=null) {
        						ds = (ArrayList<nuochoabean>)request.getAttribute("dssach");
        					
        					int n=ds.size();
        					for(int i=0;i<=1;i++)
        					{
        						nuochoabean s = ds.get(i); 
                            
                            %>
        <div class="col-lg-4 col-md-6">
          <div class="single-product">
            <div class="product-img">
              <img class="img-fluid w-100" src="<%=s.getAnh() %>" alt="" style="width:350px;height:350px" class="img-thumblin"  />
              <div class="p_icon">
                <a href="chitietsanpham?ms=<%=s.getMasanpham()%>">
                  <i class="ti-eye"></i>
                </a>
                <a href="#">
                  <i class="ti-heart"></i>
                </a>
                <a href="gioController?anh=<%=s.getAnh()%>&ms=<%=s.getMasanpham()%>&ts=<%=s.getTensanpham()%>&gia=<%=s.getGia()%>">
                  <i class="ti-shopping-cart"></i>
                </a>
              </div>
              
            </div>
            <div class="product-btm">
              <a href="#" class="d-block">
                <h4><%=s.getTensanpham() %></h4>
              </a>
              <div class="mt-3">
                <span class="mr-4"><%=s.getGia() %></span>
                <del><%=s.getGia() %></del>
              </div>
            </div>
          </div>
        </div>
			<%i++;
						  if(i<n) 
						  	{ s=ds.get(i);	
						
						%>
        <div class="col-lg-4 col-md-6">
          <div class="single-product">
            <div class="product-img">
              <img class="img-fluid w-100" src="<%=s.getAnh() %>" alt="" style="width:350px;height:350px" />
              <div class="p_icon">
                <a href="chitietsanpham?ms=<%=s.getMasanpham()%>">
                  <i class="ti-eye"></i>
                </a>
                <a href="#">
                  <i class="ti-heart"></i>
                </a>
                <a href="gioController?anh=<%=s.getAnh()%>&ms=<%=s.getMasanpham()%>&ts=<%=s.getTensanpham()%>&gia=<%=s.getGia()%>">
                  <i class="ti-shopping-cart"></i>
                </a>
              </div>
              
            </div>
            <div class="product-btm">
              <a href="#" class="d-block">
                <h4><%=s.getTensanpham() %></h4>
              </a>
              <div class="mt-3">
                <span class="mr-4"><%=s.getGia() %></span>
                <del><%=s.getGia() %></del>
              </div>
            </div>
          </div>
        </div>
			<%} %>
			<%i++;
						  if(i<n) 
						  	{ s=ds.get(i);	
						
						%>
        <div class="col-lg-4 col-md-6">
          <div class="single-product">
            <div class="product-img">
              <img class="img-fluid w-100" src="<%=s.getAnh() %>" alt="" style="width:350px;height:350px"/>
              <div class="p_icon">
                <a href="chitietsanpham?ms=<%=s.getMasanpham()%>">
                  <i class="ti-eye"></i>
                </a>
                <a href="#">
                  <i class="ti-heart"></i>
                </a>
                <a href="gioController?anh=<%=s.getAnh()%>&ms=<%=s.getMasanpham()%>&ts=<%=s.getTensanpham()%>&gia=<%=s.getGia()%>">
                  <i class="ti-shopping-cart"></i>
                </a>
              </div>
              
            </div>
            <div class="product-btm">
              <a href="#" class="d-block">
                <h4><%=s.getTensanpham() %></h4>
              </a>
              <div class="mt-3">
                <span class="mr-4"><%=s.getGia() %></span>
                <del><%=s.getGia() %></del>
              </div>
            </div>
          </div>
        </div>
        <%} %>
        <%}} %>
      </div>
      
    </div>
  </section>
  <!--================ End Khu Vực Sản Phẩm Đặc Trưn =================-->

  <!--================ Banner Ưu Đãi =================-->
  <section class="offer_area">
    <div class="container">
      <div class="row justify-content-center">
        <div class="offset-lg-4 col-lg-6 text-center">
          <div class="offer_content">
            <h3 class="text-uppercase mb-40">Giảm Giá Cực Sốc</h3>
            <h2 class="text-uppercase">Giảm đến 30%</h2>
            <a href="nuochoaController" class="main_btn mb-20 mt-5">Mua Ngay</a>
            <p>Thời gian có hạn</p>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--================ End Banner Ưu Đãi =================-->
  <!--================ New Product Area =================-->
  <section class="new_product_area section_gap_top section_gap_bottom_custom">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-12">
          <div class="main_title">
            <h2><span>Sản Phẩm Mới</span></h2>
            
          </div>
        </div>
      </div>
		 <%
                            ArrayList<nuochoabean> ds2;
        					if(request.getAttribute("dssach")!=null) {
        						ds2 = (ArrayList<nuochoabean>)request.getAttribute("dssach");
        					
        					int n=ds2.size();
        					for(int i=3;i<4;i++)
        					{
        						nuochoabean s = ds2.get(i); 
                            
                            %>
      <div class="row">
        <div class="col-lg-6">
          <div class="new_product">
            <h5 class="text-uppercase">Mua Nước Hoa Theo Tính Cách</h5>
            <h3 class="text-uppercase"><%=s.getTensanpham() %></h3>
            <div class="product-img">
              <img class="img-fluid img-new" src="<%=s.getAnh() %>" alt=""  />
            </div>
            <h4><%=s.getGia() %> VNĐ</h4>
            <a href="gioController?anh=<%=s.getAnh()%>&ms=<%=s.getMasanpham()%>&ts=<%=s.getTensanpham()%>&gia=<%=s.getGia()%>" class="main_btn">Thêm Vào Giỏ</a>
          </div>
        </div>
		<%}} %>
		
        <div class="col-lg-6 mt-5 mt-lg-0">
        	<%
                            ArrayList<nuochoabean> ds3;
        					if(request.getAttribute("dssach")!=null) {
        						ds3 = (ArrayList<nuochoabean>)request.getAttribute("dssach");
        					
        					int n=ds3.size();
        					for(int i=4;i<8;i++)
        					{
        						nuochoabean s = ds3.get(i); 
                            
                            %>
          <div class="row">
            <div class="col-lg-6 col-md-6" >
              <div class="single-product" style="border: 1px solid #555;">
                <div class="product-img" >
                  <img class="img-fluid w-100" src="<%=s.getAnh() %>" alt="" />
                  <div class="p_icon">
                    <a href="chitietsanpham?ms=<%=s.getMasanpham()%>">
                      <i class="ti-eye"></i>
                    </a>
                    <a href="#">
                      <i class="ti-heart"></i>
                    </a>
                    <a href="gioController?anh=<%=s.getAnh()%>&ms=<%=s.getMasanpham()%>&ts=<%=s.getTensanpham()%>&gia=<%=s.getGia()%>">
                      <i class="ti-shopping-cart"></i>
                    </a>
                  </div>
                </div>
                <div class="product-btm">
                  <a href="#" class="d-block">
                    <h4><%=s.getTensanpham() %></h4>
                  </a>
                  <div class="mt-3">
                    <span class="mr-4"><%=s.getGia() %> VNĐ</span>
                    <del><%=s.getGia() + 1000000 %> VNĐ</del>
                  </div>
                </div>
              </div>
            </div>
			<%i++;
						  if(i<n) 
						  	{ s=ds3.get(i);	
						
						%>
            <div class="col-lg-6 col-md-6">
              <div class="single-product" style="border: 1px solid #555; width: 255px;height: 395px">
                <div class="product-img">
                  <img class="img-fluid w-100" src="<%=s.getAnh() %>" alt="" />
                  <div class="p_icon">
                    <a href="chitietsanpham?ms=<%=s.getMasanpham()%>">
                      <i class="ti-eye"></i>
                    </a>
                    <a href="#">
                      <i class="ti-heart"></i>
                    </a>
                    <a href="gioController?anh=<%=s.getAnh()%>&ms=<%=s.getMasanpham()%>&ts=<%=s.getTensanpham()%>&gia=<%=s.getGia()%>">
                      <i class="ti-shopping-cart"></i>
                    </a>
                  </div>
                </div>
                <div class="product-btm" style = "width: 253.4px ; height:140px">
                  <a href="#" class="d-block">
                    <h4><%=s.getTensanpham() %></h4>
                  </a>
                  <div class="mt-3">
                    <span class="mr-4"><%=s.getGia() %> VNĐ</span>
                    <del><%=s.getGia() + 1000000 %> VNĐ</del>
                  </div>
                </div>
              </div>
            </div>
			<%} %>
			<%i++;
						  if(i<n) 
						  	{ s=ds3.get(i);	 %>
            <div class="col-lg-6 col-md-6">
              <div class="single-product" style="border: 1px solid #555;">
                <div class="product-img">
                  <img class="img-fluid w-100" src="<%=s.getAnh() %>" alt="" />
                  <div class="p_icon">
                    <a href="chitietsanpham?ms=<%=s.getMasanpham()%>">
                      <i class="ti-eye"></i>
                    </a>
                    <a href="#">
                      <i class="ti-heart"></i>
                    </a>
                    <a href="gioController?anh=<%=s.getAnh()%>&ms=<%=s.getMasanpham()%>&ts=<%=s.getTensanpham()%>&gia=<%=s.getGia()%>">
                      <i class="ti-shopping-cart"></i>
                    </a>
                  </div>
                </div>
                <div class="product-btm" style = "width: 253.4px ; height:140px">
                  <a href="#" class="d-block">
                    <h4><%=s.getTensanpham() %></h4>
                  </a>
                  <div class="mt-3">
                    <span class="mr-4"><%=s.getGia() %> VNĐ</span>
                    <del><%=s.getGia() + 1000000 %> VNĐ</del>
                  </div>
                </div>
              </div>
            </div>
			<%} %>
			<%i++;
						  if(i<n) 
						  	{ s=ds3.get(i);	 %>
            <div class="col-lg-6 col-md-6">
              <div class="single-product" style="border: 1px solid #555; width: 255px;height: 395px">
                <div class="product-img" >
                  <img class="img-fluid w-100" src="<%=s.getAnh() %>" alt="" />
                  <div class="p_icon">
                    <a href="chitietsanpham?ms=<%=s.getMasanpham()%>">
                      <i class="ti-eye"></i>
                    </a>
                    <a href="#">
                      <i class="ti-heart"></i>
                    </a>
                    <a href="gioController?anh=<%=s.getAnh()%>&ms=<%=s.getMasanpham()%>&ts=<%=s.getTensanpham()%>&gia=<%=s.getGia()%>">
                      <i class="ti-shopping-cart"></i>
                    </a>
                  </div>
                </div>
                <div class="product-btm" style = "width: 253.4px ; height:140px">
                  <a href="#" class="d-block">
                    <h4><%=s.getTensanpham() %></h4>
                  </a>
                  <div class="mt-3">
                    <span class="mr-4"><%=s.getGia() %> VNĐ</span>
                    <del><%=s.getGia() + 1000000 %> VNĐ</del>
                  </div>
                </div>
              </div>
            </div>
          	<%} %>
          </div>
       <%}} %>
        </div>
      </div>

    </div>
  </section>
  <!--================ End New Product Area =================-->

  <!--================ Tat Ca San Pham =================-->
  <section class="inspired_product_area section_gap_bottom_custom">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-12">
          <div class="main_title">
            <h2><span>Tất Cả Sản Phẩm</span></h2>
            <p>Những Sản Phẩm Chất Lượng</p>
          </div>
        </div>
      </div>
		 <%
                            ArrayList<nuochoabean> ds4;
        					if(request.getAttribute("dssach")!=null) {
        						ds4 = (ArrayList<nuochoabean>)request.getAttribute("dssach");
        					
        					int n=ds4.size();
        					for(int i=1;i<10;i++)
        					{
        						nuochoabean s = ds4.get(i); 
                            
                            %>
      <div class="row">
        <div class="col-lg-4 col-md-6">
          <div class="single-product">
            <div class="product-img">
              <img class="img-fluid w-100" src="<%=s.getAnh() %>" alt="" />
              <div class="p_icon">
                <a href="chitietsanpham?ms=<%=s.getMasanpham()%>">
                  <i class="ti-eye"></i>
                </a>
                <a href="#">
                  <i class="ti-heart"></i>
                </a>
                <a href="gioController?anh=<%=s.getAnh()%>&ms=<%=s.getMasanpham()%>&ts=<%=s.getTensanpham()%>&gia=<%=s.getGia()%>">
                  <i class="ti-shopping-cart"></i>
                </a>
              </div>
            </div>
            <div class="product-btm">
              <a href="#" class="d-block">
                <h4><%=s.getTensanpham() %></h4>
              </a>
              <div class="mt-3">
                <span class="mr-4"><%=s.getGia() %> VNĐ</span>
              </div>
            </div>
          </div>
        </div>
		<%i++;
						  if(i<n) 
						  	{ s=ds4.get(i);	
						
						%>
        <div class="col-lg-4 col-md-6">
          <div class="single-product">
            <div class="product-img">
              <img class="img-fluid w-100" src="<%=s.getAnh() %>" alt="" />
              <div class="p_icon">
                <a href="chitietsanpham?ms=<%=s.getMasanpham()%>">
                  <i class="ti-eye"></i>
                </a>
                <a href="#">
                  <i class="ti-heart"></i>
                </a>
                <a href="gioController?anh=<%=s.getAnh()%>&ms=<%=s.getMasanpham()%>&ts=<%=s.getTensanpham()%>&gia=<%=s.getGia()%>">
                  <i class="ti-shopping-cart"></i>
                </a>
              </div>
            </div>
            <div class="product-btm">
              <a href="#" class="d-block">
                <h4><%=s.getTensanpham() %></h4>
              </a>
              <div class="mt-3">
                <span class="mr-4"><%=s.getGia() %> VNĐ</span>
              </div>
            </div>
          </div>
        </div>
		<%} %>
		<%i++;
						  if(i<n) 
						  	{ s=ds4.get(i);	
						
						%>
        <div class="col-lg-4 col-md-6">
          <div class="single-product">
            <div class="product-img">
              <img class="img-fluid w-100" src="<%=s.getAnh() %>" alt="" />
              <div class="p_icon">
                <a href="chitietsanpham?ms=<%=s.getMasanpham()%>">
                  <i class="ti-eye"></i>
                </a>
                <a href="#">
                  <i class="ti-heart"></i>
                </a>
                <a href="gioController?anh=<%=s.getAnh()%>&ms=<%=s.getMasanpham()%>&ts=<%=s.getTensanpham()%>&gia=<%=s.getGia()%>">
                  <i class="ti-shopping-cart"></i>
                </a>
              </div>
            </div>
            <div class="product-btm">
              <a href="#" class="d-block">
                <h4><%=s.getTensanpham() %></h4>
              </a>
              <div class="mt-3">
                <span class="mr-4"><%=s.getGia() %> VNĐ</span>
              </div>
            </div>
          </div>
        </div>
		<%} %>
        
      </div>
   
   <%}} %>
    </div>
  </section>
  <!--================ End Inspired Product Area =================-->

  <!--================ Start Blog Area =================-->
 <section class="blog-area section-gap">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="main_title">
                    <h2><span>Tin Tức</span></h2>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="single-blog">
                    <div class="thumb">
                        <img class="img-fluid" src="image_nuochoa/pos1.jpg" alt="">
                    </div>
                    <div class="short_details">
                        <div class="meta-top d-flex">
                            <a href="#">By Admin</a>
                            <a href="#"><i class="ti-comments-smiley"></i>2 Comments</a>
                        </div>
                        <a class="d-block" href="single-blog.html">
                            <h4>Nước Hoa Thượng Hạng A</h4>
                        </a>
                        <div class="text-wrap">
                            <p>
                                Mang đến hương thơm quyến rũ, tự tin cho mọi ngày của bạn.
                            </p>
                        </div>
                        <a href="#" class="blog_btn">Tìm Hiểu Thêm <span class="ml-2 ti-arrow-right"></span></a>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-6">
                <div class="single-blog">
                    <div class="thumb">
                        <img class="img-fluid" src="image_nuochoa/pos2.png" alt="">
                    </div>
                    <div class="short_details">
                        <div class="meta-top d-flex">
                            <a href="#">By Admin</a>
                            <a href="#"><i class="ti-comments-smiley"></i>2 Comments</a>
                        </div>
                        <a class="d-block" href="single-blog.html">
                            <h4>Hương Thơm Tự Nhiên</h4>
                        </a>
                        <div class="text-wrap">
                            <p>
                                Lấy cảm hứng từ thiên nhiên, hương thơm mang đến sự tươi mới và dịu dàng.
                            </p>
                        </div>
                        <a href="#" class="blog_btn">Tìm Hiểu Thêm <span class="ml-2 ti-arrow-right"></span></a>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-6">
                <div class="single-blog">
                    <div class="thumb">
                        <img class="img-fluid" src="image_nuochoa/pos3.jpg" alt="">
                    </div>
                    <div class="short_details">
                        <div class="meta-top d-flex">
                            <a href="#">By Admin</a>
                            <a href="#"><i class="ti-comments-smiley"></i>2 Comments</a>
                        </div>
                        <a class="d-block" href="single-blog.html">
                            <h4>Nước Hoa Nam</h4>
                        </a>
                        <div class="text-wrap">
                            <p>
                                Dành riêng cho nam giới, mang đến sự lịch lãm và mạnh mẽ.
                            </p>
                        </div>
                        <a href="#" class="blog_btn">Tìm Hiểu Thêm <span class="ml-2 ti-arrow-right"></span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

  <!--================ End Blog Area =================-->

  <!--================ start footer Area  =================-->
  <footer class="footer-area section_gap">
    <div class="container">
      <div class="row">
        <div class="col-lg-2 col-md-6 single-footer-widget">
          <h4>Giới Thiệu</h4>
          <ul>
            <li><a href="#">Giới Thiệu về Shop</a></li>
            <li><a href="#">Quan Điểm Kinh Doanh</a></li>
            <li><a href="#">Bản Quyền & Sở Hữu</a></li>
          </ul>
        </div>
        <div class="col-lg-4 col-md-6 single-footer-widget">
          <h4>Chính Sách Công Ty</h4>
          <ul>
            <li><a href="#">Điều khoản sử dụng</a></li>
            <li><a href="#">Chính sách bảo mật thông tin</a></li>
            <li><a href="#">Chính sách bảo hành</a></li>
            <li><a href="#">Chính sách đổi trả</a></li>
          </ul>
        </div>
        <div class="col-lg-2 col-md-6 single-footer-widget">
          <h4>Trợ Giúp</h4>
          <ul>
            <li><a href="#">Hướng dẫn sử dụng nước hoa</a></li>
            <li><a href="#">Hướng dẫn mua hàng</a></li>
            <li><a href="#">Phương thức thanh toán</a></li>
            <li><a href="#">Gói quà miễn phí</a></li>
          </ul>
        </div>
        <div class="col-lg-2 col-md-6 single-footer-widget">
          <h4>Thông tin khác</h4>
          <ul>
            <li><a href="#">Hoạt động TNGH</a></li>
            <li><a href="#">Member Card</a></li>
            <li><a href="#">Gift Voucher</a></li>
            <li><a href="#">Tuyển Dụng</a></li>
          </ul>
        </div>
        <div class="col-lg-2 col-md-6 single-footer-widget">
          <h4>Liên Hệ</h4>
          <ul>
        <li> <a href = "#"> <p>Liên Hệ Trang Web</p></a></li>
         </ul>
        </div>
      </div>
      <div class="footer-bottom row align-items-center">
        <p class="footer-text m-0 col-lg-8 col-md-12"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> Thế Giới Nước Hoa <i class="fa fa-heart-o" aria-hidden="true"></i> 
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
        <div class="col-lg-4 col-md-12 footer-social">
          <a href="#"><i class="fa fa-facebook"></i></a>
          <a href="#"><i class="fa fa-twitter"></i></a>
          <a href="#"><i class="fa fa-dribbble"></i></a>
          <a href="#"><i class="fa fa-behance"></i></a>
        </div>
      </div>
    </div>
  </footer>
  <!--================ End footer Area  =================-->


  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="js/jquery-3.2.1.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/stellar.js"></script>
  <script src="vendors/lightbox/simpleLightbox.min.js"></script>
  <script src="vendors/nice-select/js/jquery.nice-select.min.js"></script>
  <script src="vendors/isotope/imagesloaded.pkgd.min.js"></script>
  <script src="vendors/isotope/isotope-min.js"></script>
  <script src="vendors/owl-carousel/owl.carousel.min.js"></script>
  <script src="js/jquery.ajaxchimp.min.js"></script>
  <script src="vendors/counter-up/jquery.waypoints.min.js"></script>
  <script src="vendors/counter-up/jquery.counterup.js"></script>
  <script src="js/mail-script.js"></script>
  <script src="js/theme.js"></script>
</body>

</html>