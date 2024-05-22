<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<%@include file="css/allcss.jsp"%>
</head>
<body>
<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4 mt-3">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center">Đăng Nhập</h3>
						<form action="dangnhapadminController" method="post">
							<div class="form-group">
								<label for="exampleInputText">Tên Đăng Nhập</label> <input
									type="text" class="form-control" id="exampleInputText"
									name="txtun" required>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Mật Khẩu</label> <input
									type="password" class="form-control" id="exampleInputText"
									name="txtpass" required>
							</div>

							<div class="text-center">
								<button type="submit" class="btn btn-primary">Đăng Nhập</button>

							</div>
							<div class="text-center ">
								<p>
									<small>Bạn Chưa Có Tài Khoản?</small> <a href="dangkyadmin"><small>Đăng Ký</small></a>
								</p>
								<p><small>hoặc đăng nhập với</small> </p>
								<p><small>Đăng nhập với tư cách là khách hàng?</small><a href="dangnhapController"><small>Khách Hàng</small></a></p>
								 
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%
		if(request.getParameter("kt") !=null)
			out.print("<script>alert('thông tin đăng nhập không hợp lệ');</script>");
%>
</body>
</html>