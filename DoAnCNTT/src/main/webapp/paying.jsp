<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thanh toán</title>
    <link rel="icon" href="assets/img/logo.png" type="image/png">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/Paying.css">

</head>

<body>

    <div id="nav" style="background-color: #1d5069;">
        <div class="container">
            <div class="nav-left">
                <a href="trangchu.jsp" style="color: white;">Padago<sup style="color: white;">hotel</sup></a>
            </div>
            <div class="nav-right">
                <ul>
                    <li><a href="#" style="color: white;">Điểm đến</a></li>
                    <li><a href="uudai.jsp" style="color: white;">Ưu đãi</a></li>
                    <li><a href="khachsandadat.jsp" style="color: white;">Đã Đặt</a></li>
                    <li><a href="help-center.jsp" style="color: white;">Trợ giúp</a></li>
                    <a href="#" class="book-button" style="color: white;">ĐẶT NGAY</a>
                </ul>
            </div>
        </div>
    </div>
	
	<script>
	    var maHoaDon = '<%= session.getAttribute("MaHoaDon") != null ? session.getAttribute("MaHoaDon") : "Không có" %>';
	    var hoTen = '<%= session.getAttribute("HoTen") != null ? session.getAttribute("HoTen") : "Không có" %>';
	    var phone = '<%= session.getAttribute("Phone") != null ? session.getAttribute("Phone") : "Không có" %>';
	    var ngayNhan = '<%= session.getAttribute("NgayNhan") != null ? session.getAttribute("NgayNhan") : "Không có" %>';
	    var ngayTra = '<%= session.getAttribute("NgayTra") != null ? session.getAttribute("NgayTra") : "Không có" %>';
	    var soNgayThue = '<%= session.getAttribute("SoNgayThue") != null ? session.getAttribute("SoNgayThue") : "Không có" %>';
	    var nguoiLon = '<%= session.getAttribute("NguoiLon") != null ? session.getAttribute("NguoiLon") : "Không có" %>';
	    var treEm = '<%= session.getAttribute("TreEm") != null ? session.getAttribute("TreEm") : "Không có" %>';
	    var giaThuePhong = '<%= session.getAttribute("GiaThuePhong") != null ? session.getAttribute("GiaThuePhong") : "Không có" %>';
	    var tongTien = '<%= session.getAttribute("TongTien") != null ? session.getAttribute("TongTien") : "Không có" %>';
	
	    console.log("Mã hóa đơn: " + maHoaDon);
	    console.log("Họ tên: " + hoTen);
	    console.log("Điện thoại: " + phone);
	    console.log("Ngày nhận: " + ngayNhan);
	    console.log("Ngày trả: " + ngayTra);
	    console.log("Số ngày thuê: " + soNgayThue);
	    console.log("Người lớn: " + nguoiLon);
	    console.log("Trẻ em: " + treEm);
	    console.log("Giá thuê phòng: " + giaThuePhong);
	    console.log("Tổng tiền: " + tongTien);
	</script>



    <div class="container">

        <div class="Payingconten">
            <div class="Paying-main">
                <h2>Chọn hình thức thanh toán</h2>
                <ul>
                    <li><input type="radio" name="options"> <img src="assets/images/atm.png" alt=""> ATM Card
                        (Thẻ nội địa)</li>
                    <li><input type="radio" name="options"> <img src="assets/images/visa.png" alt=""> Thẻ quốc
                        tế (Visa, Master,Amex,JCB)</li>
                    <li><input type="radio" name="options"> <img src="assets/images/momo.png" alt=""> Ví điện
                        tử Momo</li>
                    <li><input type="radio" name="options"> <img src="assets/images/zalopay.webp" alt=""> Ví
                        điện tử Zalopay</li>
                    <li><input type="radio" name="options"> <img src="assets/images/vnpay.png" alt=""> VNPay
                    </li>
                </ul>
                <div>
                    <h2>Thông tin thanh toán</h2>
                    <table>
                        <tr class="first-row">
                            <td>
                                <!--Tên trên thẻ-->

                                <div class="input-row row mt-2">
                                    <div class="col-3 "><label class="form-label " for="tenthe">Tên trên thẻ</label>
                                    </div>
                                    <div class="col  ">
                                        <input class="form-control" type="text" name="tenthe" id="tenthe">
                                        <span style="color: red; float: left;">*</span>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div><img src="assets/images/atm.png" alt=""> <img
                                        src="assets/images/visa.png" alt=""><img
                                        src="./assets/images/vnpay.png" alt=""></div>
                            </td>
                        </tr>
                        <tr class="second-row">
                            <td>
                                <!--Số thẻ-->
                                <div class="input-row row mt-2">
                                    <div class="col-3 "><label class="form-label " for="sothe">Số thẻ</label></div>
                                    <div class="col  ">
                                        <input class="form-control" type="text" name="sothe" id="sothe">
                                        <span style="color: red; float: left;">*</span>
                                    </div>
                                </div>

                            </td>
                            <td>
                                <div><img src="assets/images/recures.png" alt=""></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div>
                                    <p>Ngày hết hạn</p>
                                    <select name="" id="">
                                        <option value="">1</option>
                                        <option value="">2</option>
                                        <option value="">3</option>
                                        <option value="">4</option>
                                        <option value="">5</option>
                                        <option value="">6</option>
                                        <option value="">7</option>
                                        <option value="">8</option>
                                        <option value="">9</option>
                                        <option value="">10</option>
                                        <option value="">11</option>
                                        <option value="">12</option>
                                    </select>
                                    <select name="" id="">
                                        <option value="">2024</option>
                                        <option value="">2025</option>
                                        <option value="">2026</option>
                                        <option value="">2027</option>
                                        <option value="">2028</option>
                                        <option value="">2029</option>
                                        <option value="">2030</option>
                                        <option value="">2031</option>
                                        <option value="">2032</option>
                                        <option value="">2033</option>
                                        <option value="">2034</option>
                                        <option value="">2035</option>
                                        <option value="">2036</option>
                                        <option value="">2037</option>

                                    </select>
                                </div>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>
                                <!--Mã bảo mật-->

                                <div class="input-row row mt-2">
                                    <div class="col-3 "><label class="form-label " for="mabaomat">Mã bảo mật</label>
                                    </div>
                                    <div class="col  ">
                                        <input class="form-control" type="text" name="mabaomat" id="mabaomat">
                                        <span style="color: red; float: left;">*</span>
                                    </div>
                                </div>

                            </td>
                            <td> </td>
                        </tr>
                        <tr>
                            <div>
                                <td colspan="2" class="row-big">
                                    <div>
                                        <div class="row4">
                                            <input type="checkbox">
                                            <p for="">Tôi đã đọc và đồng ý với những điều khoản trên</p>
                                        </div>
                                    </div>
                                </td>

                            </div>

                        </tr>
                        <tr class="row-end">
                            <td colspan="2"><button id="btn-thanhtoan">Thanh toán</button></td>
                        </tr>

                    </table>
                </div>
            </div>
            <div class="Booking-detail">
                <h2>Hóa đơn đặt phòng</h2>
                <div class="hoadon" style="display: flex;">
                    <table style="width: 250px;">
                        <tr>
                            <td>Mã hóa đơn: </td>
                        </tr>
                        <tr>
                            <td>Họ tên: </td>
                        </tr>
                        <tr>
                            <td>Số điện thoại: </td>
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

                    <table id="table">

                    </table>
                </div>

            </div>
        </div>

    </div>

    <footer>
        <div class="coop"
            style="display: flex; flex-direction: column; text-align: center;padding: 20px; margin-top: 550px;">
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

    <script src="assets/javaScript/paying.js"></script>
    <script src="assets/javaScript/khachsandadat.js"></script>

</body>

</html>