<%@page import="bean.lichsubean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.khachhangbean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Lịch Sử Mua Hàng</title>
 <!-- Required meta tags -->
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <link rel="icon" href="img/favicon.png" type="image/png" />
  <title>Eiser ecommerce</title>
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
  <%@include file="css/allcss.jsp"%>
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

  <div style="background-color: #f5f5f5">
 <div class="container mt-5 pt-3" >
		<h3 class="text-center">Lịch Sử Mua Hàng Của Bạn</h3>
		<div><a href="nuochoaController">Quay Trở Lại Mua Hàng</a></div>
        <table border="1" width="800" valign="top" class="table table-light">
            <thead>
                <tr class="bg-primary">
                    <th scope="col">STT</th>
                    
                    <th scope="col">Tên Sản Phẩm</th>
                    <th scope="col">Giá</th>
                    <th scope="col">Số Lượng Mua</th>
                    <th scope="col">Thành Tiền</th>
                    <th scope="col">Trạng thái</th>
                </tr>
            </thead>
            <tbody>
                <% 
                ArrayList<lichsubean> dsls = (ArrayList<lichsubean>) request.getAttribute("dsls");
                	int count = 1;
                   if ( dsls!= null) {
                       for (lichsubean s : dsls) {
                           %>
                           <tr>
                               <td><%= count++ %></td>
                              
                               <td><%= s.getTensanpham() %></td>
                               <td><%= s.getGia() %></td>
                               <td><%= s.getSoluongmua() %></td>
                               <td><%= s.getThanhtien() %></td>
                               <td><%= s.isDamua() ? "Da xac nhan thanh toan" : "Chua xac nhan thanh toan" %></td>
                           </tr>
                           <%
                       }
                   } else {
                       %>
                       <tr>
                           <td colspan="10">Bạn chưa có đơn hàng, mời bạn <a href="htnuoc">Đặt mua hàng</a></td>
                       </tr>
                       <%
                   }
                %>
            </tbody>
        </table>
    </div>
    </div>
  
  
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