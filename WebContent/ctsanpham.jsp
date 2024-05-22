<%@page import="bean.khachhangbean"%>
<%@page import="bo.giohangbo"%>
<%@page import="bean.giohangbean"%>
<%@page import="bean.nuochoabean"%>
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
    <title>Chi Tiết Sản Phẩm</title>
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
              <h2>Chi Tiết Sản Phẩm</h2>
              <p>Xem những sản phẩm chất lượng </p>
            </div>
            <div class="page_link">
              <a href="homeController">Trang Chủ</a>
              <a href="chitietsanpham">Chi Tiết Sản Phẩm</a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--================End Home Banner Area =================-->

    <!--================Single Product Area =================-->
    <div class="product_image_area">
      <div class="container">
      <% 
    				nuochoabean sp = (nuochoabean) request.getAttribute("sp");
   				 if (sp != null) {%>
        <div class="row s_product_inner">
          <div class="col-lg-6">
            <div class="s_product_img">
             	<img src="<%=sp.getAnh() %>" alt = "a1.jpg" class="border d-block w-100"> 
            </div>
          </div>
          <div class="col-lg-5 offset-lg-1">
            <div class="s_product_text">
              <h3><%=sp.getTensanpham() %></h3>
              <h2><%=sp.getGia() %> VNĐ</h2>
              <ul class="list">
                <li>
                  <a class="active" href="#">
                    <span>Thương Hiệu</span> : <%=sp.getThuonghieu() %></a
                  >
                </li>
                <li><a href="#"> <span>Đánh Giá : </span> <a
									class="starbap-star starbap--off"><i
										class="fa fa-star fa-fw" style="color: #dfe519 !important"></i></a>
									<a class="starbap-star starbap--off"><i
										class="fa fa-star fa-fw" style="color: #dfe519 !important"></i></a>
									<a class="starbap-star starbap--off"><i
										class="fa fa-star fa-fw" style="color: #dfe519 !important"></i></a>
									<a class="starbap-star starbap--off"><i
										class="fa fa-star fa-fw" style="color: #dfe519 !important"></i></a>
									<a class="starbap-star starbap--off"><i
										class="fa fa-star fa-fw" style="color: #dfe519 !important"></i></a>
									<span class="starbap-prev-badgetext">0 đánh giá</span>

							</a></li>
              </ul>
              <p>
               <b>CAM KẾT KHI MUA SẮM</b><br>
               - Tư vấn nhiệt tình & tận tâm.<br>
               - Đảm bảo nguồn gốc và chất lượng sản phẩm.<br> 
			   - Miễn phí đổi trả nếu sản phẩm có vấn đề. 
              </p>
              <div class="card_area">
              <form action="suaController?ms=<%=sp.getMasanpham()%>&sl=<%=sp.getSoluong() %> " method="post">
                                        <div class="input-group w-50	 ">
                                            <input type="number" name="txtsl" min="0" class="form-control" placeholder="Nhập Số Lượng">
                                        </div>
                                 <div class = "m-2">
                <a class="main_btn" href="gioController?anh=<%=sp.getAnh()%>&ms=<%=sp.getMasanpham()%>&ts=<%=sp.getTensanpham()%>&gia=<%=sp.getGia()%>">Add to Cart</a>
                 </div >
                  </form> 
                
              </div>
                <%} %>
            </div>
          </div>
        </div>
     <%-- <%} %> --%>
      </div>
    </div>
    <!--================End Single Product Area =================-->

    <!--================Product Description Area =================-->
    <section class="product_description_area">
      <div class="container">
        <ul class="nav nav-tabs" id="myTab" role="tablist">
          
          <li class="nav-item">
            <a
              class="nav-link"
              id="contact-tab"
              data-toggle="tab"
              href="#contact"
              role="tab"
              aria-controls="contact"
              aria-selected="false"
              >Bình Luận</a
            >
          </li>
          <li class="nav-item">
            <a
              class="nav-link active"
              id="review-tab"
              data-toggle="tab"
              href="#review"
              role="tab"
              aria-controls="review"
              aria-selected="false"
              >Đánh Gía</a
            >
          </li>
        </ul>
        <div class="tab-content" id="myTabContent">
          
          <div
            class="tab-pane fade"
            id="contact"
            role="tabpanel"
            aria-labelledby="contact-tab"
          >
            <div class="row">
              <div class="col-lg-12">
                <div class="comment_list">
                  <div class="review_item">
                    <div class="media">
                      <div class="d-flex">
                        <img
                          src="img/product/single-product/review-1.png"
                          alt=""
                        />
                      </div>
                      <div class="media-body">
                        <h4>Thanh Phúc</h4>
                        <h5>13:03, 26/08/2023</h5>
                        <a class="reply_btn" href="#">Reply</a>
                      </div>
                    </div>
                    <p>
                     Chất Lượng Sản Phẩm Tuyệt Vời 
                    </p>
                  </div>
                  <div class="review_item reply">
                    <div class="media">
                      <div class="d-flex">
                        <img
                          src="img/product/single-product/review-2.png"
                          alt=""
                        />
                      </div>
                      <div class="media-body">
                        <h4>Hoàng Thương</h4>
                        <h5>19:02, 05/07/2023</h5>
                        <a class="reply_btn" href="#">Reply</a>
                      </div>
                    </div>
                    <p>
                      Mùi Hương Rất Dễ Chịu
                    </p>
                  </div>
                  <div class="review_item">
                    <div class="media">
                      <div class="d-flex">
                        <img
                          src="img/product/single-product/review-3.png"
                          alt=""
                        />
                      </div>
                      <div class="media-body">
                        <h4>Lê Duy Tân</h4>
                        <h5>00:06, 07/08/2023</h5>
                        <a class="reply_btn" href="#">Reply</a>
                      </div>
                    </div>
                    <p>
                      Thời Gian Giao Hàng Rất Nhanh
                    </p>
                  </div>
                </div>
              </div>
              
            </div>
          </div>
          <div
            class="tab-pane fade show active"
            id="review"
            role="tabpanel"
            aria-labelledby="review-tab"
          >
            <div class="row">
              <div class="col-lg-6">
                <div class="row total_rate">
                  <div class="col-6">
                    <div class="box_total">
                      <h5>Đánh Giá</h5>
                      <h4>4.0</h4>
                      <h6>(03 Reviews)</h6>
                    </div>
                  </div>
                  <div class="col-6">
                    <div class="rating_list">
                      <h3>Dựa trên 3 đánh giá</h3>
                      <ul class="list">
                        <li>
                          <a href="#"
                            >5 Star
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i> 01</a
                          >
                        </li>
                        <li>
                          <a href="#"
                            >4 Star
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i> 01</a
                          >
                        </li>
                        <li>
                          <a href="#"
                            >3 Star
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i> 01</a
                          >
                        </li>
                        <li>
                          <a href="#"
                            >2 Star
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i> 01</a
                          >
                        </li>
                        <li>
                          <a href="#"
                            >1 Star
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i> 01</a
                          >
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div class="review_list">
                  <div class="review_item">
                    <div class="media">
                      <div class="d-flex">
                        <img
                          src="img/product/single-product/review-1.png"
                          alt=""
                        />
                      </div>
                      <div class="media-body">
                        <h4>Quang Thắng</h4>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                      </div>
                    </div>
                    <p>
                      Sản phẩm tốt mọi người nên mua về sài thử
                    </p>
                  </div>
                  <div class="review_item">
                    <div class="media">
                      <div class="d-flex">
                        <img
                          src="img/product/single-product/review-2.png"
                          alt=""
                        />
                      </div>
                      <div class="media-body">
                        <h4>Lý Hùng</h4>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                      </div>
                    </div>
                    <p>
                      Sản phẩm này tốt , xịt lên rất thơm 
                    </p>
                  </div>
                  <div class="review_item">
                    <div class="media">
                      <div class="d-flex">
                        <img
                          src="img/product/single-product/review-3.png"
                          alt=""
                        />
                      </div>
                      <div class="media-body">
                        <h4>Quang Linh</h4>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                      </div>
                    </div>
                    <p>
                     Ngửi chai này rất thích , Sản phẩm rất chất lượng
                    </p>
                  </div>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="review_box">
                  <h4>Add a Review</h4>
                  <p>Your Rating:</p>
                  <ul class="list">
                    <li>
                      <a href="#">
                        <i class="fa fa-star"></i>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <i class="fa fa-star"></i>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <i class="fa fa-star"></i>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <i class="fa fa-star"></i>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <i class="fa fa-star"></i>
                      </a>
                    </li>
                  </ul>
                  <p>Outstanding</p>
                  <form
                    class="row contact_form"
                    action="contact_process.php"
                    method="post"
                    id="contactForm"
                    novalidate="novalidate"
                  >
                    <div class="col-md-12">
                      <div class="form-group">
                        <input
                          type="text"
                          class="form-control"
                          id="name"
                          name="name"
                          placeholder="Your Full name"
                        />
                      </div>
                    </div>
                    <div class="col-md-12">
                      <div class="form-group">
                        <input
                          type="email"
                          class="form-control"
                          id="email"
                          name="email"
                          placeholder="Email Address"
                        />
                      </div>
                    </div>
                    <div class="col-md-12">
                      <div class="form-group">
                        <input
                          type="text"
                          class="form-control"
                          id="number"
                          name="number"
                          placeholder="Phone Number"
                        />
                      </div>
                    </div>
                    <div class="col-md-12">
                      <div class="form-group">
                        <textarea
                          class="form-control"
                          name="message"
                          id="message"
                          rows="1"
                          placeholder="Review"
                        ></textarea>
                      </div>
                    </div>
                    <div class="col-md-12 text-right">
                      <button
                        type="submit"
                        value="submit"
                        class="btn submit_btn"
                      >
                        Submit Now
                      </button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--================End Product Description Area =================-->

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
    <script src="js/mail-script.js"></script>
    <script src="vendors/jquery-ui/jquery-ui.js"></script>
    <script src="vendors/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendors/counter-up/jquery.counterup.js"></script>
    <script src="js/theme.js"></script>
  </body>
</html>

</html>