<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.temporal.ChronoUnit" %>
<%@ page import="Entity.HotelBooked" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hóa đơn trả phòng</title>
    <style>
        .invoice-container {
            max-width: 800px;
            margin: 50px auto;
            padding: 30px;
            box-shadow: 0 0 20px rgba(0,0,0,0.1);
            background: white;
        }
        .detail-row {
            display: flex;
            justify-content: space-between;
            padding: 10px 0;
            border-bottom: 1px solid #eee;
        }
        .overdue-notice {
            background-color: #fff3cd;
            padding: 15px;
            margin: 20px 0;
        }
        .total-amount {
            font-size: 1.2em;
            font-weight: bold;
            text-align: right;
            padding: 15px;
            background-color: #1F4456;
            color: white;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="invoice-container">
        <h1 style="text-align: center;">HÓA ĐƠN TRẢ PHÒNG</h1>
        <p style="text-align: center;">
            Thời gian xuất hóa đơn: 
            <fmt:formatDate value="<%= new java.util.Date() %>" pattern="dd/MM/yyyy HH:mm:ss"/>
        </p>
        
        <c:if test="${sessionScope.HotelBookedDetail != null}">
            <div class="detail-row">
                <strong>Mã hóa đơn:</strong>
                <span>${HotelBookedDetail.maHoaDon}</span>
            </div>
            <div class="detail-row">
                <strong>Họ tên khách hàng:</strong>
                <span>${HotelBookedDetail.hoTen}</span>
            </div>
            <div class="detail-row">
                <strong>Số điện thoại:</strong>
                <span>${HotelBookedDetail.SDT}</span>
            </div>
            <div class="detail-row">
                <strong>Mã phòng:</strong>
                <span>${HotelBookedDetail.maPhong}</span>
            </div>
            <div class="detail-row">
                <strong>Loại phòng:</strong>
                <span>${HotelBookedDetail.tenPhong}</span>
            </div>
            <div class="detail-row">
                <strong>Vị trí:</strong>
                <span>${HotelBookedDetail.viTri}</span>
            </div>
            
            <div class="detail-row">
                <strong>Ngày nhận phòng:</strong>
                <span>${HotelBookedDetail.ngayNhanPhong}</span>
            </div>
            <div class="detail-row">
                <strong>Ngày trả phòng (dự kiến):</strong>
                <span>${HotelBookedDetail.ngayTraPhong}</span>
            </div>
            <div class="detail-row">
                <strong>Ngày trả phòng (thực tế):</strong>
                <span><fmt:formatDate value="<%= new java.util.Date() %>" pattern="dd/MM/yyyy"/></span>
            </div>
            
            <div class="detail-row">
                <strong>Giá thuê phòng/ngày:</strong>
                <span><fmt:formatNumber value="${HotelBookedDetail.giaThuePhong}" type="currency" currencySymbol="VNĐ "/></span>
            </div>

            <%
                HotelBooked hotelBooked = (HotelBooked)session.getAttribute("HotelBookedDetail");
                LocalDate ngayTraDuKien = hotelBooked.getNgayTraPhong();
                LocalDate ngayHienTai = LocalDate.now();
                long soNgayTre = ChronoUnit.DAYS.between(ngayTraDuKien, ngayHienTai);
                pageContext.setAttribute("soNgayTre", soNgayTre);
            %>
            
            <c:if test="${soNgayTre > 0}">
                <div class="overdue-notice">
                    <div class="detail-row">
                        <strong>Số ngày trễ hạn:</strong>
                        <span>${soNgayTre} ngày</span>
                    </div>
                    <div class="detail-row">
                        <strong>Phí phụ thu mỗi ngày (120% giá phòng):</strong>
                        <span><fmt:formatNumber value="${HotelBookedDetail.giaThuePhong * 1.2}" type="currency" currencySymbol="VNĐ "/></span>
                    </div>
                    <div class="detail-row">
                        <strong>Tổng phụ phí (${soNgayTre} ngày):</strong>
                        <span><fmt:formatNumber value="${HotelBookedDetail.giaThuePhong * 1.2 * soNgayTre}" type="currency" currencySymbol="VNĐ "/></span>
                    </div>
                </div>
            </c:if>

            <div class="total-amount">
                TỔNG THANH TOÁN: 
                <c:set var="phuPhi" value="${soNgayTre > 0 ? HotelBookedDetail.giaThuePhong * 1.2 * soNgayTre : 0}" />
                <fmt:formatNumber value="${HotelBookedDetail.tongTien + phuPhi}" type="currency" currencySymbol="VNĐ "/>
            </div>
            
            <div style="text-align: center; margin-top: 30px;">
                <form action="DeletePayment" method="post">
                    <button type="submit" style="padding: 10px 20px; background-color: #1F4456; color: white; border: none; cursor: pointer;">
                        Xác nhận và về trang chủ
                    </button>
                </form>
            </div>
        </c:if>
    </div>
</body>
</html>