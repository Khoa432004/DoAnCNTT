<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.time.LocalDate"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Booking_hotel/TrangChu</title>
<link rel="icon" href="assets/img/logo.png" type="image/png">
<link rel="stylesheet"
	href="assets/icon/themify-icons/themify-icons.css">

<link rel="stylesheet" href="assets/css/khachsandadat.css">

</head>

<body>
	<div id="header" style="background-color: #1F4456;">
		<div class="container">
			<div class="header-left">
				<div class="num">+84 773 914 830</div>
			</div>
			<div class="header-right">
				<%
				if (session.getAttribute("Username") == null) {
				%>
				<a href="dangnhap.jsp" class="log-button" id="log-button1">Đăng
					Nhập</a> <a href="dangky.jsp" class="reg-button" id="reg-button1">Đăng
					Ký</a>

				<%
				} else {
				%>
				<form action="dangxuat" method="post" class="form-logout-button">
					<a href="" class="username-button" id="username-button1">${sessionScope.Username}</a>
					<a href="doimatkhau.jsp" class="changepass-button"
						id="changepass-button1">Đổi mật khẩu</a>
					<button type="submit" id="logout-button1" class="logout-button">Đăng
						Xuất</button>
				</form>
				<%
				}
				%>
			</div>
		</div>
	</div>
	<%
	String currentURL = request.getRequestURL().toString();
	session.setAttribute("CurrentURL", currentURL);
	%>
	<script>
        var username = '<%=session.getAttribute("Username")%>
		';
		console.log(username)
	</script>
	<div id="nav" style="background-color: rgb(240, 240, 240);">
		<div class="container">
			<div class="nav-left">
				<a href="trangchu.jsp">Padago<sup>hotel</sup></a>
			</div>
			<div class="nav-right">
				<ul>
					<li><a href="#diemden">Điểm đến</a></li>
					<li><a href="uudai.jsp">Ưu đãi</a></li>
					<li><a
						href="<%=(session.getAttribute("Username") == null) ? "dangnhap.jsp" : "HotelBookedServlet"%>">Đã
							Đặt</a></li>
					<li><a href="help-center.jsp">Trợ giúp</a></li>
					<a href="#" class="book-button">ĐẶT NGAY</a>
				</ul>
			</div>
		</div>
	</div>

	<div class="title-khachsandadat "
		style="height: 250px; display: flex; justify-content: center; align-items: center; background-image: url(assets/images/resort.jpg);">
		<h1 style="color: #ace3ff;">DANH SÁCH CÁC KHÁCH SẠN ĐÃ ĐẶT</h1>
	</div>

	<div class="table-da-book table ">

		<table id="table-book" style="color: black;">
			<tr>
				<td>Mã hóa đơn</td>
				<td>Họ tên</td>
				<td>Số điện thoại</td>
				<td>Mã phòng</td>
				<td>Tên phòng</td>
				<td>Ví trí</td>
				<td>Ngày nhận phòng</td>
				<td>Ngày trả phòng</td>
				<td>Giá thuê phòng</td>
				<td>Tổng tiền</td>
				<td></td>
			</tr>
			<c:forEach var="HotelBooked" items="${HotelBookedList}">
				<form action="HotelInformationBooked" method="post"
					class="form-information">
					<input class="check-infor" type="hidden" name="MaHoaDon"
						id="MaHoaDon" value="${HotelBooked.maHoaDon}">
					<tr>
						<td>${HotelBooked.maHoaDon}</td>
						<td>${HotelBooked.hoTen}</td>
						<td>${HotelBooked.SDT}</td>
						<td>${HotelBooked.maPhong}</td>
						<td>${HotelBooked.tenPhong}</td>
						<td>${HotelBooked.viTri}</td>
						<td>${HotelBooked.ngayNhanPhong}</td>
						<td>${HotelBooked.ngayTraPhong}</td>
						<td>${HotelBooked.giaThuePhong}</td>
						<td>${HotelBooked.tongTien}</td>
						<!-- 	                    <td><button type="submit" class="chitietdadat-button" id="chitietdadat-button1">Chi tiết</button></td> -->
						<td>
							<%-- 							<button type="submit" class="trapphong-button"
								id="traphong-button1">
								<c:set var="currentDate" value="<%=LocalDate.now()%>" /> --%> <%-- 								<c:choose>
									<c:when test="${currentDate.isAfter(HotelBooked.ngayTraPhong)}">
        Trả phòng trễ
    </c:when>
									<c:otherwise>
        Trả phòng
    </c:otherwise>
								</c:choose> --%> 
								
							<%-- 	<c:set var="currentDate"
								value="<%=LocalDate.now()%>" />
							<button type="submit" class="trapphong-button"
								id="traphong-button1"
								style="background-color: ${currentDate.isAfter(HotelBooked.ngayTraPhong) ? '#dc3545' : '#1F4456'}">
								${currentDate.isAfter(HotelBooked.ngayTraPhong) ? 'Trả phòng trễ' : 'Trả phòng'}
							</button> --%>
							
    <c:set var="currentDate" value="<%= java.time.LocalDate.now() %>" />
    <button type="submit" class="trapphong-button" 
            style="background-color: ${currentDate.isAfter(HotelBooked.ngayTraPhong) ? '#dc3545' : '#1F4456'}">
        ${currentDate.isAfter(HotelBooked.ngayTraPhong) ? 'Trả phòng trễ' : 'Trả phòng'}
    </button>

							 <!-- </button> -->
						</td>
					</tr>
				</form>
			</c:forEach>

		</table>
	</div>


	<footer>
		<div class="coop"
			style="display: flex; flex-direction: column; text-align: center; padding: 20px; margin-top: 300px;">
			<p style="color: #6b6b6b; font-size: 12px;">Các nhãn hàng đã hợp
				tác</p>
			<div class="hoptac">
				<img src="assets/img/coop.png" alt="">
			</div>
		</div>
		<div class="info"
			style="background-color: rgb(52, 58, 64); padding: 20px;">
			<div class=" info-1"
				style="display: flex; justify-content: space-around;">
				<div class="info-1-1">
					<h3 style="color: white;">Liên Hệ</h3>
					<p style="font-weight: 200; color: white;">
						✉ <a href="mailto:khoavt123456789@gmail.com" target="_blank">khoavt123456789@gmail.com</a>
						<br> ✉ <a href="mailto:khoavt123456789@gmail.com"
							target="_blank">khoavt123456789@gmail.com</a>
					</p>
				</div>
				<div class="info-1-2">
					<h3 style="color: white;">Chi nhánh</h3>
					<p style="font-weight: 200; color: white;">

						Địa chỉ 1: Số 123 Đường 1, Quận 1, Tp. Hồ Chí Minh <br> Địa
						chỉ 2: Số 456 Đường 2, Quận 2, Tp. Hồ Chí Minh
					</p>
				</div>
			</div>
		</div>
		<div id="copyright"
			style="height: 100%; display: flex; justify-content: center; align-items: center; background-color: rgb(52, 58, 64); padding: 10px;">
			<p style="color: white;">Bản quyền © 2024 Trang Đặt Khách Sạn.
				Tất cả các quyền đã được bảo lưu.</p>
		</div>

	</footer>

	<script src="assets/javaScript/khachsandadat.js"></script>
</body>

</html>