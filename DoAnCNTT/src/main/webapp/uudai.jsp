<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking_hotel/UuDai</title>
    <link rel="icon" href="assets/img/logo.png" type="image/png">

    <link rel="stylesheet" href="assets/icon/themify-icons/themify-icons.css">

    <link rel="stylesheet" href="assets/css/uudai.css">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/noUiSlider/15.7.0/nouislider.min.css">

</head>

<body>
    <div id="header" style="background-color: #1F4456;">

    </div>
    <div id="nav" style="background-color: rgb(240, 240, 240);">
        <div class="container">
            <div class="nav-left">
                <a href="trangchu.jsp">Padago<sup>hotel</sup></a>
            </div>
            <div class="nav-right">
                <ul>
                    <li><a href="trangchu.jsp">Điểm đến</a></li>
                    <li><a href="#">Ưu đãi</a></li>
                    <li><a href="<%= (session.getAttribute("Username") == null) ? "dangnhap.jsp" : "HotelBookedServlet" %>">Đã Đặt</a></li>
                    <li><a href="help-center.jsp">Trợ giúp</a></li>
                    <a href="#" class="book-button">ĐẶT NGAY</a>
                </ul>
            </div>
        </div>
    </div>
    <div id="search-box">

    </div>

    <div id="content">
        <div class="container d-flex  justify-content-center " style="background-color: #ffffff;">

            <div class="main-content row mt-3">

                <div class="content-sidebar col-sm-3">

                    <!--Sản phẩm áp dụng được-->
                    <div class="loc-container mt-2"
                        style="width: 100%;height: auto;border:1px solid rgb(230, 230, 230); background-color: white; border-radius: 5px; padding: 10px;">

                        <p style="font-weight: 600; font-size: 14px;">Sản phẩm áp dụng được:</p>

                        <div class="form-checkn mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="" />
                            <label class="form-check-label" for=""> Khách sạn và Nhà</label>
                        </div>

                        <div class="form-check mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="" />
                            <label class="form-check-label" for=""> Khách sạn trong nước</label>
                        </div>

                        <div class="form-check mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="" />
                            <label class="form-check-label" for=""> Khách sạn ngoài nước</label>
                        </div>
                    </div>

                    <!--Ưu đãi-->
                    <div class="loc-container mt-2"
                        style="width: 100%;height: auto;border:1px solid rgb(230, 230, 230); background-color: white; border-radius: 5px; padding: 10px;">

                        <p style="font-weight: 600; font-size: 14px;">Ưu đãi:</p>

                        <div class="form-checkn mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="luachon-uudai-1" />
                            <label class="form-check-label" for=""> Phiếu giảm giá (2) </label>
                        </div>

                        <div class="form-check mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="luachon-uudai-2" />
                            <label class="form-check-label" for=""> Ưu đãi đặt phòng</label>
                        </div>
                    </div>
                </div>

                <div class="content-itemt col-sm ">
                    <!-----itemt-1----->

                    <div class="itemt-1 row ">
                        <!--uudai-1-->
                        <div class="uudai-1 col-4 non-ticket">
                            <div class="card">
                                <div class="card-img">
                                    <img src="assets/img/offer3.png" alt="">
                                </div>
                                <div class="card-body">
                                    <p>Vé Ưu Đãi Đặc Biệt!</p>
                                    <p style="font-size: 12px;">Siêu ưu đãi, giá cực rẻ...</p>
                                </div>

                                <div class="card-footer ">
                                  <%--  <button style="width: 100%;" class="btn btn-success ">Nhận ngay</button> --%>
                                    <button style="width: 100%;" class="btn btn-uudaidacbiet id="btn-uudaidacbiet" 
                                    onclick="addUuDai('VIP20', '<%= session.getAttribute("Username") != null ? session.getAttribute("Username") : "" %>')">Nhận ngay</button>
                                </div>
                            </div>
                        </div>
                        <!--uudai-5-->
                        <div class="uudai-1 col-4 non-ticket">
                            <div class="card">
                                <div class="card-img">
                                    <img src="assets/img/offer2.png" alt="">
                                </div>
                                <div class="card-body">
                                    <p>Chương trình AgodaVIP</p>
                                    <p style="font-size: 12px;">Hãy bấm để tìm hiểu thêm về các ưu đãi và lợi ích độc
                                        quyền của VIP!</p>
                                </div>

                                <div class="card-footer ">
                                  <%--   <button style="width: 100%;" class="btn btn-success ">Nhận ngay</button> --%>
                                  <button style="width: 100%;" class="btn btn-agodavip id="btn-agodavip" 
                                  onclick="addUuDai('AGODAVIP15', '<%= session.getAttribute("Username") != null ? session.getAttribute("Username") : "" %>')">Nhận ngay</button>
                                    
                                </div>
                            </div>
                        </div>

                        <!--uudai-6-->
                        <div class="uudai-1 col-4 non-ticket">
                            <div class="card">
                                <div class="card-img">
                                    <img src="assets/img/offer7.png" alt="">
                                </div>
                                <div class="card-body">
                                    <p>Ưu đãi Quốc tế</p>
                                    <p style="font-size: 12px;">Giảm tới 30% giá khách sạn Quốc tế, giữ phòng trong 7 ngày!</p>  
                                       
                                </div>

                                <div class="card-footer ">
                                   <%--  <button style="width: 100%;" class="btn btn-success ">Nhận ngay</button> --%>
                                    <button style="width: 100%;" class="btn btn-uudaiquocte id="btn-uudaiquocte"
									onclick="addUuDai('INT200K', '<%= session.getAttribute("Username") != null ? session.getAttribute("Username") : "" %>')">Nhận ngay</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-----itemt-2----->

                    <div class="itemt-1 row mt-5">
                        <!--uudai-4-->
                        <div class="uudai-1 col-4 non-ticket">
                            <div class="card">
                                <div class="card-img">
                                    <img src="assets/img/offer6.png" alt="">
                                </div>
                                <div class="card-body">
                                    <p>Ưu đãi trong nước</p>
                                    <p style="font-size: 12px;">Tiết kiệm thêm tới 25% cho giá khách sạn trong nước</p>
                                </div>

                                <div class="card-footer ">
                                   <%--  <button style="width: 100%;" class="btn btn-success ">Nhận ngay</button>--%>
                                    <button style="width: 100%;" class="btn btn-uudaitrongnuoc id="btn-uudaitrongnuoc" 
                                    onclick="addUuDai('DOM100K', '<%= session.getAttribute("Username") != null ? session.getAttribute("Username") : "" %>')">Nhận ngay</button>
                                </div>
                            </div>
                        </div>
                        <!--uudai-2-->
                        <div class="uudai-1 col-4 non-room">
                            <div class="card">
                                <div class="card-img">
                                    <img src="assets/img/offer4.png" alt="">
                                </div>
                                <div class="card-body">
                                    <p>Giảm đến 500,000 đ</p>
                                    <p style="font-size: 12px;">Chi tiêu ít nhất ₫ 2,783,000</p>
                                </div>

                                <div class="card-footer ">
                                   <%--  <button style="width: 100%;" class="btn btn-success  ">Nhận ngay</button> --%>
                                   <button style="width: 100%;" class="btn btn-giam500k id="btn-giam500k" 
									onclick="addUuDai('500KDISCOUNT', '<%= session.getAttribute("Username") != null ? session.getAttribute("Username") : "" %>')">Nhận ngay</button> 
                                </div>
                            </div>
                        </div>

                        <!--uudai-3-->
                        <div class="uudai-1 col-4 non-room">
                            <div class="card">
                                <div class="card-img">
                                    <img src="assets/img/offer1.png" alt="">
                                </div>
                                <div class="card-body">
                                    <p>Giảm đến 700,000 đ</p>
                                    <p style="font-size: 12px;">Chi tiêu ít nhất ₫ 3,545,000</p>
                                </div>

                                <div class="card-footer ">
                                <%--  <button style="width: 100%;" class="btn btn-success ">Nhận ngay</button> --%>  
                                     <button style="width: 100%;" class="btn btn-giam700k id="btn-giam700k" 
								onclick="addUuDai('700KDISCOUNT', '<%= session.getAttribute("Username") != null ? session.getAttribute("Username") : "" %>')">Nhận ngay</button> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <script>
            const checkbox1 = document.getElementById('luachon-uudai-1');
            const checkbox2 = document.getElementById('luachon-uudai-2');

            checkbox1.addEventListener('change', function () {
                const nonTickets = document.querySelectorAll('.non-ticket');
                if (this.checked) {
                    nonTickets.forEach(ticket => {
                        ticket.classList.add('display-none');
                    });
                } else {
                    nonTickets.forEach(ticket => {
                        ticket.classList.remove('display-none');
                    });
                }
            });

            checkbox2.addEventListener('change', function () {
                const nonRooms = document.querySelectorAll('.non-room');
                if (this.checked) {
                    nonRooms.forEach(room => {
                        room.classList.add('display-none');
                    });
                } else {
                    nonRooms.forEach(room => {
                        room.classList.remove('display-none');
                    });
                }
            });

        </script>
    </div>


    <div id="cach-ap-dung">

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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/noUiSlider/15.7.0/nouislider.min.js"></script>
    <script src="assets/bootstrap/bootstrap.bundle.min.js"></script>
    
    <!-- Liên kết file JavaScript event.js -->
    <script src="assets/javaScript/uudai.js"></script>
	


</html>