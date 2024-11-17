<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
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
	                
	                
	                </div>
	               </div>
	       </div>
	              
	    <form action="AddPaymentServlet" method="post" class="form-logout-button">            
    	<div class="container">
       		<div class="Payingconten">
           		<div class="Paying-main">
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
                               
                                <div class="input-row row mt-2">
                                <div class="col-3"><label class="form-label" for="ngayhethan">Ngày hết hạn</label></div>
                                <div class="col">
                                    <input class="form-control" type="text" name="ngayhethan" id="ngayhethan" placeholder="yyyy-mm-dd">
                                    <span style="color: red; float: left;">*</span>
                                </div>

                                 
                             </div>
                         </td>
                         <td>
                         
                         </td>
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
                    
                         <td colspan="2"><button type="submit" id="btn-thanhtoan">Thanh toán</button></td>
                         
                     </tr>

                 </table>
             </div>
             	</div>
             		</div>
	            
	            
	            
	            
	            <div class="Booking-detail">
	                <h2>Hóa đơn đặt phòng</h2>
	                <div class="hoadon" style="display: flex;">
	                    <table style="width: 250px;">
	                        <tr><td>Mã hóa đơn: ${sessionScope.MaHoaDon}</td></tr>
	                        <tr><td>Họ tên: ${sessionScope.HoTen}</td></tr>
	                        <tr><td>Số điện thoại: ${sessionScope.Phone}</td></tr>
	                        <tr><td>Ngày nhận phòng: ${sessionScope.NgayNhan}</td></tr>
	                        <tr><td>Ngày trả phòng: ${sessionScope.NgayTra}</td></tr>
	                        <tr><td>Số ngày thuê: ${sessionScope.SoNgayThue}</td></tr>
	                        <tr><td>Số người lớn: ${sessionScope.NguoiLon}</td></tr>
	                        <tr><td>Số trẻ em: ${sessionScope.TreEm}</td></tr>
	                        <tr><td>Giá thuê phòng: ${sessionScope.GiaThuePhong}</td></tr>
	                         
			            <tr>
			                <td>
			                    <p>Tổng tiền sau khi áp dụng ưu đãi: 
			                        <span id="tongTienSauUuDai" name="diadiem">${sessionScope.TongTien}</span>
			                        
			                        
			                    </p>
			                </td>
			            </tr>
	                     <tr>   
	                     	<td>
	                    <!-- Chọn ưu đãi -->
						    <div class="uudai-section">
						        <h3>Chọn ưu đãi</h3>
						            <select name="maUuDai" id="maUuDai">
						                <option value="">-- Chọn ưu đãi --</option>
						                <c:forEach var="uudai" items="${UuDaiList}">
						                    <option value="${uudai.maUuDai}" data-giaTri="${uudai.giaTri}" data-loaiUuDai="${uudai.loaiUuDai}">${uudai.tenUuDai} </option>
						                </c:forEach>
						            </select>
						            
						    </div>
						        

	                    </table>
	
	                    <table id="table">
	
	                    </table>
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
				    var maloaiphong = '<%= session.getAttribute("MaLoaiPhong") != null ? session.getAttribute("MaLoaiPhong") : "Không có" %>';
				    var tongTien = '<%= session.getAttribute("TongTien") != null ? session.getAttribute("TongTien") : "Không có" %>';
				    var username = '<%= session.getAttribute("Username") != null ? session.getAttribute("Username") : "Không có" %>';
				    
				    console.log("Mã hóa đơn: " + maHoaDon);
				    console.log("Họ tên: " + hoTen);
				    console.log("Điện thoại: " + phone);
				    console.log("Ngày nhận: " + ngayNhan);
				    console.log("Ngày trả: " + ngayTra);
				    console.log("Số ngày thuê: " + soNgayThue);
				    console.log("Người lớn: " + nguoiLon);
				    console.log("Trẻ em: " + treEm);
				    console.log("Giá thuê phòng: " + giaThuePhong);
				    console.log("Mã loại phòng: " + maloaiphong);
				    console.log("Tổng tiền: " + tongTien);
				    console.log("Username: " + username);
				</script>
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
                        <a href="mailto: khoavt123456789@gmail.com" target="_blank">khoavt123456789@gmail.com</a>
                        <br>
                        ✉
                        <a href="mailto: khoavt123456789@gmail.com" target="_blank">khoavt123456789@gmail.com</a>
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
	</form>
	
    </footer>
 
<script>
document.getElementById("maUuDai").addEventListener("change", function () {
    const selectedOption = this.options[this.selectedIndex];
    if (!selectedOption.value) {
        alert("Vui lòng chọn một ưu đãi!");
        return;
    }

    const giaTri = parseFloat(selectedOption.getAttribute("data-giaTri"));
    const loaiUuDai = parseInt(selectedOption.getAttribute("data-loaiUuDai"));
    const tongTienBanDau = parseFloat("${sessionScope.TongTien}");
    let tongTienSauUuDai;

    if (loaiUuDai === 1) {
        // Giảm theo %
        tongTienSauUuDai = tongTienBanDau - (tongTienBanDau * giaTri / 100);
    } else if (loaiUuDai === 2) {
        // Giảm theo số tiền
        tongTienSauUuDai = tongTienBanDau - giaTri;
    }

    // Cập nhật giao diện hiển thị tổng tiền sau ưu đãi
    document.getElementById("tongTienSauUuDai").textContent = tongTienSauUuDai.toFixed(2);
});
</script>
<script>
document.getElementById("btn-thanhtoan").addEventListener("click", function() {
    const selectedOption = document.getElementById("maUuDai").selectedOptions[0];
    const giaTri = parseFloat(selectedOption.getAttribute("data-giaTri"));
    const loaiUuDai = parseInt(selectedOption.getAttribute("data-loaiUuDai"));

    const tongTienBanDau = parseFloat("${sessionScope.TongTien}");
    let tongTienSauUuDai;

    if (loaiUuDai === 1) { // Giảm theo %
        tongTienSauUuDai = tongTienBanDau - (tongTienBanDau * giaTri / 100);
    } else if (loaiUuDai === 2) { // Giảm theo số tiền cố định
        tongTienSauUuDai = tongTienBanDau - giaTri;
    }

    document.getElementById("tongTienSauUuDai").textContent = tongTienSauUuDai.toFixed(2);

    // Lưu tổng tiền vào session và thêm vào bảng payment
    fetch("UpdateTongTienServlet", {
        method: "POST",
        headers: { "Content-Type": "application/x-www-form-urlencoded" },
        body: "tongTienSauUuDai=" + tongTienSauUuDai.toFixed(2)
    }).then(response => {
        if (response.ok) {
            alert("Ưu đãi được áp dụng thành công!");

            // Sau khi lưu session, gọi AddPaymentServlet để thêm vào cơ sở dữ liệu
            fetch("AddPaymentServlet", {
                method: "POST",
                headers: { "Content-Type": "application/x-www-form-urlencoded" }
            }).then(response => {
                if (response.ok) {
                    console.log("Tổng tiền đã được lưu vào bảng payment.");
                }
            });
        }
    });
    window.location.href = "HotelBookedServlet";
});

</script>
	

	<script src="assets/javaScript/paying.js"></script>
	
</body>

</html>