<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="assets/img/logo.png" type="image/png">
    <title>Booking_hotel/TrangChu</title>
    <link rel="stylesheet" href="assets/icon/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="assets/css/trangchu.css">
</head>

<body>
		<%	
		    String currentURL = request.getRequestURL().toString();
		    session.setAttribute("CurrentURL", currentURL);
		%>
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
            
            <script>
            var username = '<%= session.getAttribute("Username") %>';
		    console.log(username)
            </script>
<%--             <script>
			Method 2
            const btn_login =  document.getElementById("log-button1");
            const btn_reg = document.getElementById("reg-button1");
            const btn_logout = document.getElementById("logout-button1");
            const btn_username = document.getElementById("username-button1");
		    var username = '<%= session.getAttribute("Username") %>';
		    console.log(username)
		    if (username != null) 
		    {	
		        btn_login.style.display = "none";
				btn_reg.style.display = "none";
		    }
		     
	    	
	    	 --%>
        </div>
    </div>
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
    <div id="search-box">
        <div class="box-title">
            <h1>LUXURY HOTEL & BEST RESORT</h1>
            <a href="trangchu.jsp" class="btn">BOOK NOW</a>
        </div>
        <form action="SearchServlet" method="post" class="form mt-3">
	        <div class="box-pop">
	            <div class="pop" style="width: 280px; position: relative;">
	                <span id="tooltiptext"
	                    style="position: absolute; bottom: 67px; left:0px; background-color: #EBEBEB; border-radius: 5px; 
	                    padding: 10px; display: none; width: 100%;color: rgb(117, 117, 117);transition: opacity 0.5s ease;">
	                    VT - Vũng Tàu
	                    <br>
	                    TPHCM - Thành Phố Hồ Chí Minh
	                    <br>
	                    DN - Đà Nẵng
	                    <br>
	                    HN - Hà Nội
	                    <br>
	                    Hue - Huế
	                </span>
	                <p>Địa điểm <i class="ti-location-pin" style="color: #757575;"></i></p>
	                <input type="search" name="diadiem" autocomplete="off" id="destination"
	                    placeholder="Thành phố, khu vực, tên khách sạn, địa diểm gần đó">
	            </div>
	            <div class="pop">
	                <p>Ngày nhận phòng</p>
	                <input type="date" id="date-start" placeholder="Chọn ngày">
	            </div>
	            <div class="pop">
	                <p>Ngày trả phòng</p>
	                <input type="date" id="date-end" placeholder="Chọn ngày">
	            </div>
	            <div class="pop">
	                <p>Số người <i class="ti-user"></i></p>
	                <input type="number" id="people-number" min="1" value="1" placeholder="Nhập số người">
	            </div>
	            <input type="submit" id="find-button" value="Tìm kiếm" class="pop btn  btn-danger ">
	        </div>
        </form>
    </div>
    <div id="content">
        <div class="container" style="background-color: #F0EEED;">
            <div class="content-part-1">
                <div class="sub-title">
                    <p>WELCOME TO PADAGO HOTELS</p>
                </div>
                <div class="title-text">
                    VỚI HƠN 20 NHÃN HIỆU HỢP TÁC
                    <br>5,000+ địa điểm du lịch & khách sạn
                </div>
                <div class="sub-title" style="margin-bottom: 70px;">
                    <p>
                    <p>Website trực tuyến dành cho những ai đang tìm kiếm trải nghiệm lưu trúkhách sạn không thể quên.
                        <br>Với một loạt các điều khoản và tiện ích tốt nhất, chúng tôi cam kết mang đến cho bạn
                        <br>những kỳ nghỉ hoàn hảo và đáng nhớ.
                    </p>
                    </p>
                </div>
                <a href="trangchu.jsp" class="btn" style="background-color: #A0825E">Tận hưởng
                    ngay</a>
            </div>
            <div class="content-part-2">
                <div id="uudai" class="title-text">Các Ưu đãi</div>
                <p>Khám phá các ưu đãi hấp dẫn từ các khách sạn hàng đầu</p>
                <div class="card-group-1">
                    <div class="card-1">
                        <img src="assets/img/offer1.png" alt="Offer 1">
                        <p>
                            <br>Nhận ngay 8% giảm giá vào mỗi đơn đặt tour từ các ngày thứ 2 - thứ 6 hằng tuần
                            <br><a href="uudai.jsp" class="btn">Chi Tiết</a>
                        </p>
                    </div>

                    <div class="card-1">
                        <img src="assets/img/offer2.png" alt="Offer 2">
                        <h3></h3>
                        <p>
                            <br>Trở thành khách hàng thân thiết của Pagoda và các quyền lợi hấp dẫn
                            <br><a href="uudai.jsp" class="btn">Chi Tiết</a>
                        </p>

                    </div>
                </div>
            </div>
            <div class="content-part-3" id="diemden">
                <div class="title-text">Khám phá địa điểm</div>
                <p>Tham khảo các khách sạn được đánh giá cao từ cộng đồng du lịch</p>
                <div class="card-group-2">
                    <div class="card-2">
                        <img src="assets/img/des1.jpg" alt="Destination 1">
                        <h3>Vũng Tàu</h3>
                        <p>Khám phá những bãi biển vũng tàu cùng món ăn độc lạ</p>
                        <a href="diemden-VungTau.jsp">Chi Tiết</a>
                    </div>

                    <div class="card-2">
                        <img src="assets/img/des2.jpg" alt="Destination 2">
                        <h3>Hà Nội</h3>
                        <p>Khám phá văn hóa con người Việt Nam một cách chân thật nhất</p>
                        <a href="diemden-HaNoi.jsp">Chi Tiết</a>
                    </div>

                    <div class="card-2">
                        <img src="assets/img/des3.jpg" alt="Destination 3">
                        <h3>TP Hồ Chí Minh</h3>
                        <p>Khám phá những quán ăn cùng không khí nhộn nhịp, mát mẻ</p>
                        <a href="diemden-HoChiMinh.jsp">Chi Tiết</a>
                    </div>

                    <div class="card-2">
                        <img src="assets/img/des4.jpg" alt="Destination 4">
                        <h3>Huế</h3>
                        <p>Khám phá văn hóa, phong tục tập quán từ lâu đời của Việt Nam</p>
                        <a href="diemden-Hue.jsp">Chi Tiết</a>
                    </div>

                    <div class="card-2">
                        <img src="assets/img/des5.jpg" alt="Destination 5" style="height: 136px;">
                        <h3>Đà Nẵng</h3>
                        <p>Khám phá núi, biển, địa điểm nổi tiếng như Cầu Rồng</p>
                        <a href="diemden-DaNang.jsp">Chi Tiết</a>
                    </div>
                </div>
            </div>
            <div class="content-part-4">
                <div class="title-text">Các phản hồi tích cực về một số khách sạn</div>
                <p>Khám phá các điểm đến tuyệt vời trên khắp thế giới</p>
                <div class="card-group-3">
                    <div class="card-3">
                        <div class="card-name">Khách Sạn Vũng Tàu</div>
                        <div class="card-feedback">"Khách sạn này thật sự tuyệt vời! Phòng ốc rất sạch sẽ và thoải mái,
                            nhân viên thân thiện và phục vụ rất tận tình. Tôi đã có một kỳ nghỉ thú vị và không thể hài
                            lòng hơn với trải nghiệm tại đây. Sẽ quay lại nếu có cơ hội!"</div>
                    </div>
                    <div class="card-3">
                        <div class="card-name">Khách Sạn Hồ Đà Nẵng</div>
                        <div class="card-feedback">"Khách sạn này thực sự đáng khen ngợi! Tôi đã ở đây trong chuyến công
                            tác và không thể hài lòng hơn với dịch vụ và tiện nghi tại đây. Phòng ốc rộng rãi và sạch
                            sẽ, nhân viên thân thiện và chu đáo. Đặc biệt, tôi rất ấn tượng với nhà hàng của khách sạn,
                            thức ăn ngon và phong phú. Sẽ quay lại nếu có dịp!"
                        </div>
                    </div>
                    <div class="card-3">
                        <div class="card-name">Khách sạn Hải Phong</div>
                        <div class="card-feedback">"Tôi đã có một kỳ nghỉ tuyệt vời tại khách sạn này! Mọi thứ từ dịch
                            vụ phòng đến tiện nghi đều vượt qua mong đợi của tôi. Đội ngũ nhân viên thân thiện và phục
                            vụ rất tốt. Không gian của khách sạn cũng rất thoải mái và sang trọng. Tôi rất hạnh phúc với
                            trải nghiệm của mình và sẽ giới thiệu khách sạn này cho bạn bè và gia đình!"</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/javaScript/diemden.js"></script>
</body>

<footer>
    <div class="coop"
        style="display: flex; flex-direction: column; text-align: center;padding: 20px;margin-top: 100px;">
        <p style="color: #6b6b6b; font-size: 12px;margin-top: 30px;">Các nhãn hàng đã hợp tác</p>
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
    var destinationElement = document.getElementById("destination");
    var tooltipElement = document.getElementById("tooltiptext");

    destinationElement.addEventListener("focus", function () {
        tooltipElement.style.opacity = 1;
        setTimeout(function () {
            tooltipElement.style.display = "block";
        }, 300);

    });

    destinationElement.addEventListener("blur", function () {
        tooltipElement.style.opacity = 0;
        setTimeout(function () {
            tooltipElement.style.display = "none";
        }, 300);
    });
</script>
<script src="assets/javaScript/trangchu.js"></script>

</html>