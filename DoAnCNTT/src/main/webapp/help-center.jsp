<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="assets/img/logo.png" type="image/png">
    <title>Booking_hotel/HoTro</title>
    <link rel="stylesheet" href="assets/css/help-center.css">
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
                    <li><a href="trangchu.jsp">Điểm đến</a></li>
                    <li><a href="uudai.jsp">Ưu đãi</a></li>
                    <li><a href="<%= (session.getAttribute("Username") == null) ? "dangnhap.jsp" : "HotelBookedServlet" %>">Đã Đặt</a></li>
                    <li><a href="#">Trợ giúp</a></li>
                    <a href="#" class="book-button">ĐẶT NGAY</a>
                </ul>
            </div>
        </div>
    </div>
    <div id="content">
        <div class="content-part-1">
            <div class="title-text">Welcome to Help Center</div>
            <img src="assets/img/help-bg.png" alt="">
        </div>
        <div class="content-part-2">
            <div class="title-text" style="margin-bottom: 20px;">Các câu hỏi phổ biến</div>
            <div class="text">
                <div class="question">
                    <div class="main-question">Sau khi đặt dịch vụ mất bao lâu tôi mới nhận voucher của mình?<span
                            class="arrow"></span>
                    </div>
                    <div class="details">Tuỳ theo dịch vụ bạn đặt,
                        <br>Bạn có thể tìm hiểu xem đơn hàng của bạn có xác nhận tức thời hoặc xác nhận trong vòng 24-48
                        giờ
                        hay không trên trang chủ của dịch vụ.
                        <br>Với những dịch vụ có "Xác nhận tức thời", đơn hàng của bạn sẽ được xác nhận chỉ trong vòng 5
                        phút.
                        <br>Nếu bạn chưa nhận được email xác nhận trong khoảng thời gian được nêu, vui lòng kiểm tra hộp
                        thư rác trong email của bạn trước.
                        <br>Vẫn không tìm thấy? Hãy chat với chúng tôi. Chỉ cần đến trang Đơn hàng, chọn đơn hàng và
                        nhấnbiểu tưởng chat.
                    </div>
                </div>
                <div class="question">
                    <div class="main-question">Giá phòng được tính trên đầu người hay cho mỗi phòng?<span class="arrow">
                        </span>
                    </div>
                    <div class="details">Giá được tính theo phòng. Tuy nhiên, bất kỳ khách thêm nào (bao gồm cả trẻ em)
                        không xác nhận trước trong đặt phòng có thể phát sinh thêm phụ phí. Vui lòng đảm bảo nhập đúng
                        số lượng khách khi đặt phòng.
                    </div>
                </div>
                <div class="question">
                    <div class="main-question">Giá phòng có bao gồm thuế và phí dịch vụ không?<span
                            class="arrow"></span>
                    </div>
                    <div class="details">Điều này tuỳ thuộc vào chỗ ở. Khi đặt phòng, Pagoda sẽ cho bạn nếu có thêm bât
                        kỳ khoản thuế hoặc phụ thu nào không bao gồm trong khoản thanh toán trực tuyến hoặc cần được
                        thanh toán khi đến nơi.</div>
                </div>
                <div class="question">
                    <div class="main-question">Làm sao để tôi huỷ đơn hàng và nhận hoàn tiền?<div class="arrow"></div>
                    </div>
                    <div class="details">Việc này tuỳ theo chính sách huỷ của dịch vụ bạn sử dụng.
                        <br>Đối với những hoạt động hủy miễn phí: Bạn có thể tự hủy đơn hàng cho đến thời gian quy định
                        trong chính sách hủy bằng các bước sau:
                        <br>1. Đến trang Đơn hàng
                        <br>2. Tìm đơn hàng bạn muốn hủy và chọn "Hoàn tiền"
                        <br>3.Chọn lý do hoàn tiền, số lượng rồi nhấn "Tiếp theo"
                        <br>Đối với những hoạt động hủy có điều kiện: Vui lòng kiểm tra chính sách hủy trong trang dịch
                        vụ để biết chi tiết. Nếu bạn muốn hoàn tiền, bạn có thể chat trực tuyến với chúng tôi. Chỉ cần
                        đến trang Đơn hàng, chọn đơn hàng và nhấn biểu tượng chat.
                        <br>Đối với những hoạt động không áp dụng hoàn hủy: Rất tiếc, hoạt động này không thể hoàn tiền.
                    </div>
                </div>
                <div class="question">
                    <div class="main-question">Tôi có thể đặt thay cho gia đình và bạn bè của mình được không?<span
                            class="arrow"></span>
                    </div>
                    <div class="details">Hoàn toàn có thể. Nhưng bạn hãy lưu ý nhập chi tiết tên và thông tin của họ
                        chính xác khi đặt nhé!</div>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <div class="coop" style="display: flex; flex-direction: column; text-align: center;padding: 20px;">
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
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const questions = document.querySelectorAll('.main-question')
            for (let question of questions) {
                question.addEventListener('click', function () {
                    const details = this.nextElementSibling;
                    const arrow = this.querySelector('.arrow');
                    console.log(details)
                    console.log(arrow)
                    details.classList.toggle('active');
                    arrow.classList.toggle('active');
                })
            }
        })
    </script>
</body>


</html>