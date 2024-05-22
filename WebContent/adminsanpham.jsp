<%@page import="bean.admindangnhapbean"%>
<%@page import="bean.loaibean"%>
<%@page import="bean.nuochoabean"%>
<%@page import="bean.khachhangbean"%>
<%@page import="bean.lichsubean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Admin</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="css-admin/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <%@include file="css/allcss.jsp" %>
    </head>
    <body class="sb-nav-fixed">
      <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="adminController">Admin</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                <%
					admindangnhapbean dn = (admindangnhapbean) session.getAttribute("admin");
					if (dn == null) {
				%>
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Cài Đặt</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="dangxuatadmin">Đăng Xuất</a></li>
                    </ul>
                </li>
                <%}else { %>
                	<a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw" style="color:#fff"></i>
                	Xin Chào Admin : <%=dn.getTendangnhap() %></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Cài Đặt</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="dangxuatadmin">Đăng Xuất</a></li>
                    </ul>
                <%} %>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Core</div>
                            <a class="nav-link" href="adminController">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Trang Chủ Admin
                            </a>
                            <div class="sb-sidenav-menu-heading">Interface</div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Quản Lý Cửa Hàng
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="adminsanphamController">Quản Lý Sản Phẩm</a>
                                    <a class="nav-link" href="adminLoaiController">Quản Lý Loại Sản Phẩm</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                Chức Năng Khác
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                        Tài Khoản Admin
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="userController">Quản Lý Tài Khoản</a>
                                            <a class="nav-link" href="#">Đăng Ký</a>
                                           
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                        Hóa Đơn
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="adminxacnhanController">Xác Nhận Hóa Đơn</a>
                                          
                                        </nav>
                                    </div>
                                </nav>
                            </div>
                            
                        </div>
                    </div>
                  
                </nav>
            </div>
            
              <!-- ================================== MAIN =========================================== -->
            <div id="layoutSidenav_content">
                <main>
                    <%		String tb = (String)request.getAttribute("tb");
		if(tb!=null)
			out.print("<script>alert('Thêm Thành Công');</script>");
%>

<div class="container">
  <h2>Quản Lý Sản Phẩm</h2>
  <!-- Button to Open the Modal -->
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
    Thêm Sản Phẩm 
  </button>

  <!-- The Modal -->
  <div class="modal" id="myModal">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Thêm Sản Phẩm</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          <form action="themsanphamController" method="post" enctype="multipart/form-data">
			<h2>Thông tin</h2>
				<table class="table table-hover">
					<tr>
						<td width="200"><span>Mã sản phẩm</span></td>
						<td width="300"><input type="text" name="masanpham" size="50"></td>
					</tr>
					<tr>
						<td width="200"><span>Tên sản phẩm</span></td>
						<td width="300"><input type="text" name="tensanpham" size="50"></td>
					</tr>
					<tr>
						<td width="200"><span>Số Lượng</span></td>
						<td width="300"><input type="number" name="soLuong" size="50" min="0"></td>
					</tr>
					<tr>
						<td width="200"><span>Giá</span></td>
						<td width="300"><input type="number" name="gia" size="50" min="0"></td>
					</tr>
					<tr>
						<td width="200"><span>Mã loại</span></td>
						<%ArrayList<loaibean> dsloai =(ArrayList<loaibean>)request.getAttribute("dsloai");%>
						  <td width="300"><select name ="maloai" >
						  <%for(loaibean loai: dsloai) {%>
						  <option value="<%=loai.getMaloai()%>"><%=loai.getTenloai()%></option>
						  <%} %>
						  </select>
						  </td>
					<!-- <td width="300"><input type="text" name="maloai" size="50"></td> -->
					</tr>
					<tr>
						<td width="200"><span>Ảnh</span></td>
						<td width="300"><input type="file" name="anh" size="50" placeholder="Ảnh sản phẩm"></td>
						
					</tr>
					<!-- <tr>
						<td width="200"><span>Ngày nhập</span></td>
						<td width="300"><input type="date" name="ngaynhap" size="50"></td>
					</tr> -->
					<tr>
						<td width="200"><span>Thương Hiệu</span></td>
						<td width="300"><input  type="text" name="thuonghieu" size="50"></td>
					</tr>
				</table>
			<button type="submit" class="btnadd">Thêm</button>
		</form>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
  
</div>

<div class="addProduct">	
	<!-- <h1>Thêm sản Phẩm</h1> -->
	<hr>
		<%-- <form action="themsanphamController" method="post" enctype="multipart/form-data">
			<h2>Thông tin</h2>
				<table class="table table-hover">
					<tr>
						<td width="200"><span>Mã sản phẩm</span></td>
						<td width="300"><input type="text" name="masanpham" size="50"></td>
					</tr>
					<tr>
						<td width="200"><span>Tên sản phẩm</span></td>
						<td width="300"><input type="text" name="tensanpham" size="50"></td>
					</tr>
					<tr>
						<td width="200"><span>Số Lượng</span></td>
						<td width="300"><input type="number" name="soLuong" size="50" min="0"></td>
					</tr>
					<tr>
						<td width="200"><span>Giá</span></td>
						<td width="300"><input type="number" name="gia" size="50" min="0"></td>
					</tr>
					<tr>
						<td width="200"><span>Mã loại</span></td>
						<%ArrayList<loaibean> dsloai =(ArrayList<loaibean>)request.getAttribute("dsloai");%>
						  <td width="300"><select name ="maloai" >
						  <%for(loaibean loai: dsloai) {%>
						  <option value="<%=loai.getMaloai()%>"><%=loai.getTenloai()%></option>
						  <%} %>
						  </select>
						  </td>
					<!-- <td width="300"><input type="text" name="maloai" size="50"></td> -->
					</tr>
					<tr>
						<td width="200"><span>Ảnh</span></td>
						<td width="300"><input type="file" name="anh" size="50" placeholder="Ảnh sản phẩm"></td>
						
					</tr>
					<!-- <tr>
						<td width="200"><span>Ngày nhập</span></td>
						<td width="300"><input type="date" name="ngaynhap" size="50"></td>
					</tr> -->
					<tr>
						<td width="200"><span>Thương Hiệu</span></td>
						<td width="300"><input  type="text" name="thuonghieu" size="50"></td>
					</tr>
				</table>
			<button type="submit" class="btnadd">Thêm</button>
		</form> --%>
    <td width="800" valign="top">
		<table class="table table-hover">
			<tr>
				<td width="150"><b>Mã sản phẩm</b></td>
				<td width="150"><b>Tên sản phẩm</b></td>
				<td width="150"><b>Số lượng</b></td>
				<td width="150"><b>Giá</b></td>
				<td width="150"><b>Mã loại</b></td>
				<td width="150"><b>Ảnh sản phẩm</b></td>
				<td width="150"><b>Tác giả</b></td>
				<td width="150"><b>Hành động</b></td>
				
			</tr>
			<%
					ArrayList<nuochoabean> dssach = new ArrayList<>();
					if (request.getAttribute("dssach") != null) {
						dssach = (ArrayList<nuochoabean>)request.getAttribute("dssach");
					}
					if (dssach != null) {
					  for (nuochoabean s : dssach) {
					%>
			<tr>
				<td width="150"><b><%=s.getMasanpham() %></b></td>
				<td width="150"><b><%=s.getTensanpham() %></b></td>
				<td width="150"><b><%=s.getSoluong()%></b></td>
				<td width="150"><b><%=s.getGia() %></b></td>
				<td width="150"><b><%=s.getMaloai() %></b></td>
				<td width="150" ><img style="width: 150px;" alt="" src="<%=s.getAnh() %>"></td>
				<td width="150"><b><%=s.getThuonghieu() %></b></td>
				<td><a
					href="adminxoasachController?ms=<%=s.getMasanpham()%>">
					<button>Xóa</button></a>
					<a
					href="adminsuaController?ms=<%=s.getMasanpham()%>&tab=select">
					<button>Sửa</button></a>
					</td>
				
			</tr>
			<%} %>
			<%} %>
		</table>
	</td>
                </main>
                
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>
