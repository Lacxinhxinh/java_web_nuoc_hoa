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
                    	<% String ml = (String)request.getAttribute("maloai");
   String tenloai = (String)request.getAttribute("tenloai");
%>

<div class="container mt-5">
    <form action="adminLoaiController" method="post" class="mb-4">
        <div class="form-group">
            <label for="txtmaloai">Mã Loại:</label>
            <input type="text" class="form-control" id="txtmaloai" name="txtmaloai" value="<%= (ml == null) ? "" : ml %>">
        </div>
        <div class="form-group">
            <label for="txttenloai">Tên Loại:</label>
            <input type="text" class="form-control" id="txttenloai" name="txttenloai" value="<%= (tenloai == null) ? "" : tenloai %>">
        </div>
        <button type="submit" name="butadd" class="btn btn-primary">Thêm</button>
        <button type="submit" name="butupdate" class="btn btn-primary">Sửa</button>
    </form>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Mã Loại</th>
                <th>Tên Loại</th>
                <th>Select</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            <%
            ArrayList<loaibean> ds = (ArrayList<loaibean>) request.getAttribute("ds");
            for(loaibean loai : ds) {
            %>
                <tr>
                    <td><%= loai.getMaloai() %></td>
                    <td><%= loai.getTenloai() %></td>
                    <td><a href="adminLoaiController?ml=<%= loai.getMaloai() %>&tab=select" class="btn btn-success">Chọn</a></td>
                    <td><a href="adminLoaiController?ml=<%= loai.getMaloai() %>&tab=delete" class="btn btn-danger">Xóa</a></td>
                </tr>
            <%
            }
            %>
        </tbody>
    </table>
</div>
 <%		String tb = (String)request.getAttribute("tb");
		if(tb!=null)
			out.print("<script>alert('Thêm Thành Công');</script>");
		 String tb2 = (String)request.getAttribute("tb2");
		if(tb2!=null)
			out.print("<script>alert('Sửa Thành Công');</script>");
		
%>
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
