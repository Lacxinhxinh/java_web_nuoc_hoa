<%@page import="bean.khachhangbean"%>
<%@page import="bo.giohangbo"%>
<%@page import="bean.giohangbean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <link rel="icon" href="img/favicon.png" type="image/png" />
    <title>Giỏ Hàng</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="vendors/linericon/style.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/themify-icons.css" />
    <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css" />
    <link rel="stylesheet" href="vendors/lightbox/simpleLightbox.css" />
    <link rel="stylesheet" href="vendors/nice-select/css/nice-select.css" />
    <link rel="stylesheet" href="vendors/animate-css/animate.css" />
    <link rel="stylesheet" href="vendors/jquery-ui/jquery-ui.css" />
    <!-- main css -->
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/responsive.css" />
        <%@include file="css/allcss.jsp" %>
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
    <section class="banner_area">
      <div class="banner_inner d-flex align-items-center">
        <div class="container">
          <div
            class="banner_content d-md-flex justify-content-between align-items-center"
          >
            <div class="mb-3 mb-md-0">
              <h2>Giỏ Hàng Của Bạn</h2>
            </div>
            <div class="page_link">
              <a href="homeController">Home</a>
              <a href="gioController">Cart</a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--================End Home Banner Area =================-->

    <!--================Cart Area =================-->
  <div class="col-lg-12 col-md-12 mb-6">
       			  <a href="nuochoaController" style="color:#000;">
        <p class="btn btn-primary" style="width:200px;">Quay Trở Lại Mua Hàng</p>
    			  </a>
				  <table class="table table-hover">
				  
                    <thead>
                    <% if(session.getAttribute("dem")!=null) { %>
					<% if((long)session.getAttribute("dem")>0) { %> 
                    		<tr class="bg-primary text-center">
                    			<th scope="col"> </th>
                    			<th scope="col"> Ảnh Sản Phẩm  </th>
                    			<th scope="col">Mã Sản Phẩm</th>
                    			<th scope="col">Tên Sản Phẩm</th>
                    			<th scope="col">Giá</th>
                   				<th scope="col">Số Lượng Mua</th>
                    			<th scope="col">Thành Tiền</th>
                    			<th scope="col">Hành Động</th>
                    			<th scope="col"></th>
                    		</tr>
                    </thead>
                    
                     <%
                    //Neu session("gh") !=null thi
                    if(session.getAttribute("gh")!=null) {
                        giohangbo gh=null;
                        gh=(giohangbo)session.getAttribute("gh");
                        //Duyet cac hang trong gh.ds
                        //Hien thi ms,ts,gia,soluong, thanhtien
                        int i=0;
                        for(giohangbean h:gh.ds) { %>
                    <tbody>
              
                            <tr class="text-center">
                                <td>
                                    <input type="checkbox" name="delete <%=i%>" value="<%=h.getMasanpham()%>" form="form-1">
                                </td>
                                <td>
                                    <a href="chitietsanpham?ms=<%=h.getMasanpham()%>"><img src="<%=h.getAnh() %>" alt="Hinh anh" width="100" height="100"></a>
                                </td>
                                <td><%=h.getMasanpham() %></td>
                                <td><%=h.getTensanpham() %></td>
                                <td><%=h.getGia() %></td>
                                <td><%=h.getSoluong()%></td>
                                <td><%=h.getThanhtien() %></td>
                                <td>
                                    <form action="suaController?ms=<%=h.getMasanpham()%>&sl=<%=h.getSoluong() %>" method="post">
                                        <div class="input-group">
                                            <input type="number" name="txtsl" min="0" class="form-control" style="width: 70px;">
                                            <div class="input-group-append">
                                                <button type="submit" name="bu1" class="btn btn-success btn-sm" style="padding-left: 20px; ">Sửa</button>
                                            </div>
                                        </div>
                                    </form>
                                </td>
                                <td>
                                    <a href="xoaController?ms=<%=h.getMasanpham()%>&sl=<%=h.getSoluong()%>" class="btn btn-danger btn-sm">Xóa</a>
                                </td>
                                
                            </tr>
                        <% i++;} %>
                        <tr>
                            <td colspan="10" align="right" style="justify-content: flex-end;"><b>Tổng tiền : <%=gh.Tong() %> VNĐ</b></td>
                        </tr>
                        <tr><td><form action="xoaallController">
							<input type="submit" value="Xóa tất cả" class="btn-primary">
						</form></td>
							<td><form  action="xoadachonController" method="post" id="form-1">
								<input type="submit" value="Xóa đã chọn" class="btn-primary">
						</form></td>
						<td><form action="xacnhanController" method="post">
							<input type="submit" value="Xác nhận đặt mua" class="btn-primary" name = "b1">
						</form></td>
						</tr>
                    <% } %>
                </table>
		  <%-- <% if(session.getAttribute("dem")!=null) { %>
					<% if((long)session.getAttribute("dem")>0) { %> --%>  
					  <% } else { 
					
					%><h3 class="text-center">Bạn Chưa Mua Sản Phẩm Nào</h3><% }
				 } else { 
					 %><h3 class="text-center">Bạn Chưa Mua Sản Phẩm Nào</h3>
					 <%
					 }%>  
					
			</div>
    <!--================End Cart Area =================-->

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
   
  </body>
</html>
