<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking_hotel/DangNhap</title>
    <link rel="icon" href="assets/img/logo.png" type="image/png">
    <link rel="stylesheet" href="assets/icon/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="assets/css/dangnhap.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
    <!--header-->
    <div id="header" style="background-color: #1F4456;">
        <div class="container">
            <div class="header-left">
                <a id="pandago" href="trangchu.jsp">Padago<sup>hotel</sup></a>
            </div>
            <div class="header-right">
                <a href="dangnhap.jsp" class="log-button">Đăng Nhập</a>
                <a href="dangky.jsp" class="reg-button">Đăng Ký</a>
            </div>
        </div>
    </div>

    <!--content-->
    <div class="content d-flex justify-content-center mt-3">
        <div class="main-content row ">
            <h5>Đăng nhập tài khoản</h5>
            <form action="dangnhap" method="post" class="form mt-3">
                <div class="input-row">
                    <label class="form-label mt-1" style="font-weight: 600;" for="email">Địa chỉ email
                        <span style="color: red;font-weight: 500;">(*)</span>
                    </label>

                    <input class="form-control" type="email" name="email" id="email"
                        placeholder="Nhập địa chỉ email của bạn">
                </div>


                <div class="input-row">
                    <label class="form-label mt-1 " style="font-weight: 600;" for="password">Mật khẩu
                        <span style="color: red; font-weight: 500;">(*)</span>
                    </label>

                    <input class="form-control" type="password" name="password" id="password"
                        placeholder="Nhập mật khẩu">
                </div>
                <button class=" btn mt-3" id="btn-dangnhap" href="">Đăng nhập</button>
<%--                 <%
		            Object success = request.getSession().getAttribute("Success");
		            if (success != null) 
		            {
		                out.print(success);
		                request.getSession().removeAttribute("Success");
		            }
		            else
		            {
		                Object alert = request.getAttribute("Fail");
		            }
	            %> --%>
            </form>


            <div class="text-sub text-center mt-3">
                <p>hoặc sử dụng một trong các lựa chọn này</p>
            </div>

            <div class="plasform text-center">
                <ul>
                    <li><a href=""><i class="ti-facebook"></i></a></li>
                    <li><a href=""><i class="ti-google"></i></a></li>
                    <li><a href=""><i class="ti-twitter-alt"></i></a></li>
                </ul>
            </div>

            <div class="text-sub-2 text-center mt-3">
                <p>Qua việc đăng nhập hoặc tạo tài khoản, bạn đồng ý với các <a href="">Điều khoản và Điều kiện</a> cũng
                    như <a href="">Chính sách An toàn và Bảo mật</a> của chúng tôi</p>

            </div>
        </div>
    </div>


    <footer>
        <div class="coop"
            style="display: flex; flex-direction: column; text-align: center;padding: 20px;margin-top: 50px;">
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

    <script src="assets/javaScript/dangnhap.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

</body>

</html>