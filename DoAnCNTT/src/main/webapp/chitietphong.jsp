<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Booking_hotel/TrangChu</title>
    <link rel="icon" href="assets/img/logo.png" type="image/png">
    
    <link rel="stylesheet" href="assets/icon/themify-icons/themify-icons.css">

    <link rel="stylesheet" href="assets/css/xemchitiet.css">

</head>

<body>
    <div id="header" style="background-color: #1F4456;">
        <div class="container">
            <div class="header-left">
                <div class="num">+84 773 914 830</div>
            </div>
            <div class="header-right">
                <% if (session.getAttribute("Username") == null) 
	            { %>
	              	<a href="dangnhap.jsp" class="log-button" id="log-button1">Đăng Nhập</a>
	                <a href="dangky.jsp" class="reg-button" id="reg-button1">Đăng Ký</a> 
	                
	        	<% } 
	            else 
	            { %>
	               	<form action="dangxuat" method="post" class="form-logout-button">
	               		<a href="" class="username-button" id="username-button1" >${sessionScope.Username}</a>
	               		<a href="doimatkhau.jsp" class="changepass-button" id="changepass-button1" >Đổi mật khẩu</a>
					    <button type="submit" id="logout-button1" class="logout-button" >Đăng Xuất</button>
					</form>
	        	<% } 
	        	%>
            </div>
        </div>
    </div>
    <%	
		String currentURL = request.getRequestURL().toString();
		session.setAttribute("CurrentURL", currentURL);
	%>
	
    <div id="nav" style="background-color: rgb(240, 240, 240);">
        <div class="container">
            <div class="nav-left">
                <a href="trangchu.jsp">Padago<sup>hotel</sup></a>
            </div>
            <div class="nav-right">
                <ul>
                    <li><a href="#diemden">Điểm đến</a></li>
                    <li><a href="uudai.jsp">Ưu đãi</a></li>
                    <li><a href="<%= (session.getAttribute("Username") == null) ? "dangnhap.jsp" : "HotelBookedServlet" %>">Đã Đặt</a></li>
                    <li><a href="help-center.jsp">Trợ giúp</a></li>
                    <a href="#" class="book-button">ĐẶT NGAY</a>
                </ul>
            </div>
        </div>
    </div>

	<img src="assets/img/left.webp" alt="Left Image" class="left-image">
    <img src="assets/img/right.webp" alt="Right Image" class="right-image">
    <div class="image-container">
    	<img src="assets/img/VT-1.4.jpg" alt="Center Image" class="center-image">
	</div>
	<div class="thongtin" style="display: flex; color :black;">
	    <h2>Thông tin của phòng</h2>
		<table style="width: 250px ;height: 250px" >
			<tr>
				<td>Mã hóa đơn: </td>
			</tr>
			<tr>
				<td>Họ tên: </td>
			</tr>
			<tr>
				<td>Số điện thoại:</td>
			</tr>
			<tr>
				<td>Ngày nhận phòng: </td>
			</tr>
			<tr>
				<td>Ngày trả phòng: </td>
			</tr>
			<tr>
				<td>Số ngày thuê: </td>
			</tr>
			<tr>
				<td>Số người lớn: </td>
			</tr>
			<tr>
				<td>Số trẻ em: </td>
			</tr>
			<tr>
				<td>Giá thuê phòng: </td>
			</tr>
			<tr>
				<td>Tổng tiền: </td>
			</tr>
		</table>
	</div>
	<footer>
        <div class="coop"
            style="display: flex; flex-direction: column; text-align: center;padding: 20px; margin-top: 300px;">
            <p style="color: #6b6b6b; font-size: 12px;">Các nhãn hàng đã hợp tác</p>
            <div class="hoptac">
                <img src="assets/img/coop.png" alt="">
            </div>
        </div>
        <div class="info" style="background-color: rgb(52, 58, 64); padding: 20px;">
            <div class=" info-1" style="display: flex; justify-content: space-around;">
                <div class="info-1-1">
                    <h3 style="color: white;">Liên Hệ</h3>
                    <p style="font-weight: 200;color: white;">
                        ✉
                        <a href="mailto:khoavt123456789@gmail.com" target="_blank">khoavt123456789@gmail.com</a>
                        <br>
                        ✉
                        <a href="mailto:khoavt123456789@gmail.com" target="_blank">khoavt123456789@gmail.com</a>
                    </p>
                </div>
                <div class="info-1-2">
                    <h3 style="color: white;">Chi nhánh</h3>
                    <p style="font-weight: 200;color: white;">

                        Địa chỉ 1: Số 123 Đường 1, Quận 1, Tp. Hồ Chí Minh
                        <br>
                        Địa chỉ 2: Số 456 Đường 2, Quận 2, Tp. Hồ Chí Minh
                    </p>
                </div>
            </div>
        </div>
        <div id="copyright" style="
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: rgb(52, 58, 64);padding: 10px;">
            <p style="color: white;">Bản quyền © 2024 Trang Đặt Khách Sạn. Tất cả các quyền đã được bảo lưu.</p>
        </div>

    </footer>

    <script src=""></script>
</body>

</html>