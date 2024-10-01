<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking_hotel/Diemden_HoChiMinh</title>
    <link rel="icon" href="assets/img/logo.png" type="image/png">
    <link rel="stylesheet" href="assets/icon/themify-icons/themify-icons.css">

    <link rel="stylesheet" href="assets/css/diemden.css">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/noUiSlider/15.7.0/nouislider.min.css">

</head>

<body>

    <div class="containers">
        <div id="header" style=" background: rgba(255, 255, 255, 0.1);">
            <div class="container">
                <div class="header-left">
                    <div class="num" style="color: white;">+84 773 914 830</div>
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
        <div id="nav">
            <div class="container">
                <div class="nav-left">
                    <a href="trangchu.jsp" style="color: white;">Padago<sup
                            style="color: white;">hotel</sup></a>
                </div>
                <div class="nav-right">
                    <ul>
                        <li><a href="#" style="color: white;">Điểm đến</a></li>
                        <li><a href="uudai.jsp" style="color: white;">Ưu đãi</a></li>
                        <li><a href="<%= (session.getAttribute("Username") == null) ? "dangnhap.jsp" : "HotelBookedServlet" %>" style="color: white;" >Đã Đặt</a></li>
                        <li><a href="help-center.jsp" style="color: white;">Trợ giúp</a></li>
                        <a href="#" class="book-button" style="color: white;">ĐẶT NGAY</a>
                    </ul>
                </div>
            </div>
        </div>
        <div id="search-box">
            <P style="color: white; ; font-size: 40px; margin-bottom: 5px;letter-spacing: 4px;">THIÊN ĐƯỜNG NGHỈ DƯỠNG
            </P>
            <p style="color: white;  font-weight: 300; font-size: 20px;">Nhanh Chóng - Chất Lượng - Giá Rẻ</p>
            <div class="box-pop row mt-5">
                <div class="pop col-sm ">
                    <p>Địa điểm <i class="ti-location-pin"></i></p>
                    <input type="search" autocomplete="off" id="destination"
                        placeholder="Thành phố, khu vực, tên khách sạn, địa diểm gần đó">
                </div>
                <div class="pop col-sm ">
                    <p>Ngày nhận phòng</p>
                    <input type="date" id="date-start" placeholder="Chọn ngày">
                </div>
                <div class="pop col-sm ">
                    <p>Ngày trả phòng</p>
                    <input type="date" id="date-end" placeholder="Chọn ngày">
                </div>
                <div class="pop col-sm ">
                    <p>Số người <i class="ti-user"></i></p>
                    <input type="number" id="people-number" min="1" placeholder="Nhập số người">
                </div>
                <input type="button" id="find-button" value="Tìm kiếm" class="pop">
            </div>
        </div>
    </div>



    <div id="content">
        <div class="container d-flex  justify-content-center " style="background-color: #ffffff;">

            <div class="main-content row mt-2">
                <div id="duongdanvitri">
                    <ul>
                        <li><a href="trangchu.jsp">Trang chủ </a></li>
                        <li><i class="ti-angle-right"> </i></li>
                        <li><a href="">Điểm đến </a></li>
                        <li><i class="ti-angle-right"> </i></li>
                        <li><a href="diemden-HoChiMinh.jsp">TPCHM </a></li>
                    </ul>
                </div>

                <div class="content-sidebar col-sm-3">
                    <div class="goole-map">
                        <iframe
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d501725.41843254614!2d106.36555703781772!3d10.755292870470326!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317529292e8d3dd1%3A0xf15f5aad773c112b!2zVGjDoG5oIHBo4buRIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1714210588990!5m2!1svi!2s"
                            width="100%" height="250" style="border:0;" allowfullscreen="" loading="lazy"
                            referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>

                    <!--lọc Sao-->
                    <div class="loc-container mt-2"
                        style="width: 100%;height: auto;border:1px solid rgb(230, 230, 230); background-color: white; border-radius: 5px; padding: 10px;">

                        <p style="font-weight: 600; font-size: 14px;">Xếp hạng sao:</p>

                        <div class="form-checkn mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="" />
                            <label class="form-check-label" for=""> <i class="ti-star"></i> </label>
                        </div>

                        <div class="form-check mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="" />
                            <label class="form-check-label" for=""> <i class="ti-star"></i><i class="ti-star"></i>
                            </label>
                        </div>

                        <div class="form-check mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="" />
                            <label class="form-check-label" for=""> <i class="ti-star"></i><i class="ti-star"></i><i
                                    class="ti-star"></i> </label>
                        </div>

                        <div class="form-check mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="" />
                            <label class="form-check-label" for=""> <i class="ti-star"></i><i class="ti-star"></i><i
                                    class="ti-star"></i><i class="ti-star"></i></label>
                        </div>


                        <div class="form-check mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="" />
                            <label class="form-check-label" for=""> <i class="ti-star"></i><i class="ti-star"></i><i
                                    class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i></label>
                        </div>



                    </div>






                    <!--lọc tiện nghi-->
                    <div class="loc-container mt-2"
                        style="width: 100%;height: auto;border:1px solid rgb(230, 230, 230); background-color: white; border-radius: 5px; padding: 10px;">

                        <p style="font-weight: 600; font-size: 14px;">Tiện nghi:</p>

                        <div class="form-checkn mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="" />
                            <label class="form-check-label" for=""> WiFi </label>
                        </div>

                        <div class="form-check mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="" />
                            <label class="form-check-label" for=""> Hồ bơi </label>
                        </div>

                        <div class="form-check mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="" />
                            <label class="form-check-label" for=""> Chỗ đậu xe </label>
                        </div>

                        <div class="form-check mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="" />
                            <label class="form-check-label" for=""> Nhà hàng </label>
                        </div>


                        <div class="form-check mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="" />
                            <label class="form-check-label" for=""> Lễ tân 24/24</label>
                        </div>


                        <div class="form-check mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="" />
                            <label class="form-check-label" for=""> Thang máy </label>
                        </div>

                        <div class="form-check mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="" />
                            <label class="form-check-label" for=""> Lối dành cho xe lăn </label>
                        </div>

                        <div class="form-check mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="" />
                            <label class="form-check-label" for=""> Trung tâm thể dục</label>
                        </div>


                        <div class="form-check mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="" />
                            <label class="form-check-label" for=""> Phòng họp</label>
                        </div>

                        <div class="form-check mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="" />
                            <label class="form-check-label" for=""> Đưa đón sân bay </label>
                        </div>


                    </div>

                    <!--lọc ưu tiên nơi nghỉ-->
                    <div class="loc-container mt-2"
                        style="width: 100%;height: auto;border:1px solid rgb(230, 230, 230); background-color: white; border-radius: 5px; padding: 10px;">

                        <p style="font-weight: 600; font-size: 14px;">Ưu tiên nơi nghỉ:</p>

                        <div class="form-checkn mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="" />
                            <label class="form-check-label" for=""> All </label>
                        </div>

                        <div class="form-check mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="" />
                            <label class="form-check-label" for=""> Sale Lễ </label>
                        </div>

                        <div class="form-check mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="" />
                            <label class="form-check-label" for=""> Thanh Toán Tại Khách Sạn </label>
                        </div>

                        <div class="form-check mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="" />
                            <label class="form-check-label" for=""> Extra Benefix </label>
                        </div>


                        <div class="form-check mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="" />
                            <label class="form-check-label" for=""> Chọn Nhiều Nhất</label>
                        </div>


                        <div class="form-check mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="" />
                            <label class="form-check-label" for=""> Phù Hợp Gia Đình </label>
                        </div>

                        <div class="form-check mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="" />
                            <label class="form-check-label" for=""> Khách Sạn Xuất Hóa Đơn </label>
                        </div>

                        <div class="form-check mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="" />
                            <label class="form-check-label" for=""> Biệt Thự Và Căn Hộ</label>
                        </div>


                        <div class="form-check mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="" />
                            <label class="form-check-label" for=""> Nhà Nghỉ</label>
                        </div>

                        <div class="form-check mt-2">
                            <input class="form-check-input" type="checkbox" value="" id="" />
                            <label class="form-check-label" for="">Ưu Đãi Đặc Biệt </label>
                        </div>


                    </div>
                </div>



                <div class="content-itemt col-sm ">

                    <h4>TP.Hồ Chí Minh - Khách Sạn Và Chỗ Nghỉ</h4>
                    <div id="luachonloc">
                        <ul>
                            <li style="background-color: blue;"><a style="color: white;" href="">Lựa chọn hàng đầu của
                                    chúng tôi</a></li>
                            <li><a href="">Ưu tiên giá thấp nhất</a></li>
                            <li><a href="">Xếp hạng sao và giá</a></li>
                            <li
                                style="    padding: 7px 36px;display: flex;align-items: center;height: auto;font-weight: 300; border-right: none;">
                                <a href="">Được đánh giá hàng đầu</a>
                            </li>
                        </ul>
                    </div>
                    <!-----itemt-1----->

                    <div class="itemt-1 row ">

                        <div class="itemt-anh col-sm-4">
                            <img src="assets/img/HCM-1.jpg" alt="">
                        </div>

                        <div class="itemt-text col-sm">

                            <div class="text-1  row ">
                                <div class="text-left col-sm-8">
                                    <a id="itemt-title" href="HCM-1.jsp">Baglioni Signature
                                        <i class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i><i
                                            class="ti-star"></i><i class="ti-star"></i></a>
                                    <p style="color: black; font-size: 13px; "><i class="ti-location-pin"></i> Vị trí:
                                        Quận 1, TPHCM</p>
                                    <ul>
                                        <p>Nằm tại vị trí thuận tiện ở TP. Hồ Chí Minh, Baglioni Signature cung cấp
                                            các phòng điều hòa với Wi-Fi miễn phí, chỗ đậu xe riêng miễn phí và dịch vụ
                                            phòng.</p>
                                        <li>
                                            <p> <i class="ti-check"></i> <b style="color: green;">Miễn phí hủy</b></p>
                                        </li>
                                        <li>
                                            <p><i class="ti-check"></i> <b style="color: green;">Không cần thanh toán
                                                    trước</b> – thanh toán tại chỗ nghỉ</p>
                                        </li>

                                    </ul>
                                </div>

                                <div class="text-right col-sm">

                                    <div class="itemt-comment" style="height: 50px;">
                                    </div>

                                    <div class="itemt-price  text-center">
                                        <p style="width: 100%; font-size: 11px; color: rgb(100, 100, 100);">1 đêm, 2
                                            người lớn</p>
                                        <del class="giacu">VND 1.140.000 </del>
                                        <p class="giamoi">VND 1.000.000 </p>
                                        <p style="width: 100%; font-size: 11px; color: rgb(100, 100, 100);;">Đã bao gồm
                                            thuế và phí</p>
                                       	<a href="<%= (session.getAttribute("Username") == null) ? "dangnhap.jsp" : "HCM-1.jsp" %>" 
										   id="datngay2" 
										   class="btn btn-success mt-2">
										   Đặt Phòng Ngay <i style="color: white;" class="ti-angle-right"></i>
										</a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <!-----itemt-2----->

                    <div class="itemt-1 row mt-2">

                        <div class="itemt-anh col-sm-4">
                            <img src="assets/img/HCM-2.jpg" alt="">
                        </div>

                        <div class="itemt-text col-sm">

                            <div class="text-1  row ">
                                <div class="text-left col-sm-8">
                                    <a id="itemt-title" href="HCM-2.jsp">Montcalm Hotel Saigon<i class="ti-star"></i><i
                                            class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i></a>
                                    <p style="color: black; font-size: 13px; "><i class="ti-location-pin"></i> Vị
                                        trí: Quận 1, TPHCM</p>
                                    <ul>
                                        <p>Nằm tại vị trí thuận tiện ở trung tâm TP. Hồ Chí Minh, Montcalm Hotel
                                            Saigon cung cấp các phòng điều hòa với Wi-Fi miễn phí, chỗ đậu xe riêng miễn
                                            phí và dịch vụ phòng.</p>
                                        <li>
                                            <p> <i class="ti-check"></i> <b style="color: green;">Miễn phí hủy</b></p>
                                        </li>
                                    </ul>
                                </div>

                                <div class="text-right col-sm">

                                    <div class="itemt-comment" style="height: 50px;">
                                    </div>

                                    <div class="itemt-price  text-center">
                                        <p style="width: 100%; font-size: 11px; color: rgb(100, 100, 100);">1 đêm, 2
                                            người lớn</p>
                                        <del class="giacu">VND 1.040.000 </del>
                                        <p class="giamoi">VND 700.000 </p>
                                        <p style="width: 100%; font-size: 11px; color: rgb(100, 100, 100);;">Đã bao gồm
                                            thuế và phí</p>
                                       	<a href="<%= (session.getAttribute("Username") == null) ? "dangnhap.jsp" : "HCM-2.jsp" %>" 
										   id="datngay2" 
										   class="btn btn-success mt-2">
										   Đặt Phòng Ngay <i style="color: white;" class="ti-angle-right"></i>
										</a>
                                    </div>
                                </div>



                            </div>

                        </div>
                    </div>
                    <!-----itemt-3----->

                    <div class="itemt-1 row ">

                        <div class="itemt-anh col-sm-4">
                            <img src="assets/img/HCM-3.jpg" alt="">
                        </div>

                        <div class="itemt-text col-sm">

                            <div class="text-1  row ">
                                <div class="text-left col-sm-8">
                                    <a id="itemt-title" href="HCM-3.jsp">LANGHAM Boutiqu Hotel
                                        <i class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i><i
                                            class="ti-star"></i><i class="ti-star"></i></a>
                                    <p style="color: black; font-size: 13px; "><i class="ti-location-pin"></i> Vị trí:
                                        Quận 1, TPHCM</p>
                                    <ul>
                                        <p>Nằm ở trung tâm TP. Hồ Chí Minh, LANGHAM Boutiqu Hotel tọa lạc cách Chợ Bến
                                            Thành 4 phút đi bộ và Công viên Tao Đàn 600 m.</p>
                                        <li>
                                            <p> <i class="ti-check"></i> <b style="color: green;">Miễn phí hủy</b></p>
                                        </li>
                                        <li>
                                            <p><i class="ti-check"></i> <b style="color: green;">Không cần thanh toán
                                                    trước</b> – thanh toán tại chỗ nghỉ</p>
                                        </li>
                                    </ul>
                                </div>

                                <div class="text-right col-sm">

                                    <div class="itemt-comment" style="height: 50px;">
                                    </div>

                                    <div class="itemt-price  text-center">
                                        <p style="width: 100%; font-size: 11px; color: rgb(100, 100, 100);">1 đêm, 2
                                            người lớn</p>
                                        <del class="giacu">VND 3.140.000 </del>
                                        <p class="giamoi">VND 2.200.000 </p>
                                        <p style="width: 100%; font-size: 11px; color: rgb(100, 100, 100);;">Đã bao gồm
                                            thuế và phí</p>
                                        <a href="<%= (session.getAttribute("Username") == null) ? "dangnhap.jsp" : "HCM-3.jsp" %>" 
										   id="datngay2" 
										   class="btn btn-success mt-2">
										   Đặt Phòng Ngay <i style="color: white;" class="ti-angle-right"></i>
										</a>
                                    </div>
                                </div>



                            </div>

                        </div>
                    </div>
                    <!-----itemt-4----->

                    <div class="itemt-1 row mt-2">

                        <div class="itemt-anh col-sm-4">
                            <img src="assets/img/HCM-4.jpg" alt="">
                        </div>

                        <div class="itemt-text col-sm">

                            <div class="text-1  row ">
                                <div class="text-left col-sm-8">
                                    <a id="itemt-title" href="HCM-4.jsp">Midtown The Peak By Dhome<i
                                            class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i></a>
                                    <p style="color: black; font-size: 13px; "><i class="ti-location-pin"></i> Vị trí:
                                        Quận 7, TPHCM</p>
                                    <ul>
                                        <p>Cách Trung tâm Triển lãm và Hội nghị Sài Gòn 18 phút đi bộ, Midtown The Peak
                                            By Dhome có hồ bơi ngoài trời, khu vườn, điều hòa, ban công và Wi-Fi miễn
                                            phí. Chỗ nghỉ có phòng xông hơi khô.</p>
                                        <li>
                                            <p> <i class="ti-check"></i> <b style="color: green;">Miễn phí hủy</b></p>
                                        </li>
                                        <li>
                                            <p><i class="ti-check"></i> <b style="color: green;">Không cần thanh toán
                                                    trước</b> – thanh toán tại chỗ nghỉ</p>
                                        </li>

                                    </ul>
                                </div>

                                <div class="text-right col-sm">

                                    <div class="itemt-comment" style="height: 50px;">
                                    </div>

                                    <div class="itemt-price  text-center">
                                        <p style="width: 100%; font-size: 11px; color: rgb(100, 100, 100);">1 đêm, 2
                                            người lớn</p>
                                        <del class="giacu">VND 740.000 </del>
                                        <p class="giamoi">VND 650.000 </p>
                                        <p style="width: 100%; font-size: 11px; color: rgb(100, 100, 100);;">Đã bao gồm
                                            thuế và phí</p>
                                        <a href="<%= (session.getAttribute("Username") == null) ? "dangnhap.jsp" : "HCM-4.jsp" %>" 
										   id="datngay2" 
										   class="btn btn-success mt-2">
										   Đặt Phòng Ngay <i style="color: white;" class="ti-angle-right"></i>
										</a>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                    <!-----itemt-5----->

                    <div class="itemt-1 row mt-2">

                        <div class="itemt-anh col-sm-4">
                            <img src="assets/img/HCM-5.jpg" alt="">
                        </div>

                        <div class="itemt-text col-sm">

                            <div class="text-1  row ">
                                <div class="text-left col-sm-8">
                                    <a id="itemt-title" href="HCM-5.jsp">
                                        Luxurious apartment close to city center
                                        <i class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i><i
                                            class="ti-star"></i><i class="ti-star"></i></a>
                                    <p style="color: black; font-size: 13px; "><i class="ti-location-pin"></i>Quận 2,
                                        TPHCM</p>
                                    <ul>
                                        <p>Luxurious apartment close to city center là chỗ nghỉ nằm ở TP. Hồ Chí Minh,
                                            có ban công, hồ bơi riêng và nhìn ra thành phố.</p>
                                        <li>
                                            <p> <i class="ti-check"></i> <b style="color: green;">Miễn phí hủy</b></p>
                                        </li>
                                        <li>
                                            <p><i class="ti-check"></i> <b style="color: green;">Không cần thanh toán
                                                    trước</b> – thanh toán tại chỗ nghỉ</p>
                                        </li>
                                    </ul>
                                </div>

                                <div class="text-right col-sm">

                                    <div class="itemt-comment" style="height: 50px;">
                                    </div>

                                    <div class="itemt-price  text-center">
                                        <p style="width: 100%; font-size: 11px; color: rgb(100, 100, 100);">1 đêm, 2
                                            người lớn</p>
                                        <del class="giacu">VND 2.140.000 </del>
                                        <p class="giamoi">VND 1.780.000 </p>
                                        <p style="width: 100%; font-size: 11px; color: rgb(100, 100, 100);;">Đã bao gồm
                                            thuế và phí</p>
									s	<a href="<%= (session.getAttribute("Username") == null) ? "dangnhap.jsp" : "HCM-5.jsp" %>" 
										   id="datngay2" 
										   class="btn btn-success mt-2">
										   Đặt Phòng Ngay <i style="color: white;" class="ti-angle-right"></i>
										</a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
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

    <script src="assets/javaScript/trangchu.js"></script>
    <script src="assets/bootstrap/bootstrap.bundle.min.js"></script>
</body>

</html>