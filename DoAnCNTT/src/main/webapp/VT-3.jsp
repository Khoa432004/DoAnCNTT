<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking_hotel/ChiTietPhong</title>
    <link rel="icon" href="assets/img/logo.png" type="image/png">
    <link rel="stylesheet" href="assets/icon/themify-icons/themify-icons.css">

    <link rel="stylesheet" href="assets/css/chitietphong.css">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/noUiSlider/15.7.0/nouislider.min.css">
    <style>
        .modal-header {
            background-color: #d1d1d17e;
            border-bottom: 2px solid white;

        }

        /* Custom CSS for the modal */
        .modal-content {
            border-radius: 20px;
        }

        .modal-title {
            color: #333;
        }

        .modal-body {
            padding: 20px;
            background-color: #d1d1d122;
        }

        .input-row {
            margin-bottom: 20px;
        }

        .form-label {
            font-weight: bold;
            color: #555;
        }

        .btn-close {
            color: #aaa;
        }

        .modal-footer {
            border-top: 2px solid white;
            background-color: #d1d1d122;
        }

        .btn-danger {
            background-color: #dc3545;
            border-color: #dc3545;
        }

        .btn-danger:hover {
            background-color: #c82333;
            border-color: #bd2130;
        }
    </style>
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
                    <a href="#phongtrong" class="book-button" style="color: white;">ĐẶT NGAY</a>
                </ul>
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
                        <li><a href="">Khách sạn </a></li>
                        <li><i class="ti-angle-right"> </i></li>
                        <li><a href="">Vũng Tàu </a></li>
                    </ul>
                </div>

                <div class="content-sidebar col-sm-3">
                    <div class="goole-map">
                        <iframe
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d125575.28025882451!2d107.04064831489599!3d10.403496925264003!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31756fd4554f0cf5%3A0xb24fd23bf641fa40!2zVsWpbmcgVMOgdSwgQsOgIFLhu4thIC0gVsWpbmcgVMOgdSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1714030408215!5m2!1svi!2s"
                            width="100%" height="250" style="border:0;" allowfullscreen="" loading="lazy"
                            referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>

                    <!--Khách sạn tương tự-->
                    <div class="loc-container mt-2"
                        style="width: 100%;height: auto; background-color: white; border-radius: 5px; padding: 10px;">

                        <p style="font-weight: 600; font-size: 16px; color: #1F4456;">Khách sạn tương tự:</p>

                        <!--Khách sạn 1-->
                        <div class="itemt-1 row mt-2">

                            <div class="itemt-anh col-sm-6">
                                <img src="assets/img/VT-1.jpg" alt="">
                            </div>

                            <div class="itemt-text col-sm">

                                <div class="text-1  ">
                                    <div class="text-left col-sm">
                                        <a id="itemt-title" href="VT-1.jsp" style="font-size: 13px;">Fati Boutique
                                            Hotel &
                                            Apartment</a>
                                        <p style="color: black; font-size: 13px; "><i class="ti-location-pin"></i> Vị
                                            trí: Phường 5, Vũng Tàu</p>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!--Khách sạn 2-->
                        <div class="itemt-1 row mt-2">

                            <div class="itemt-anh col-sm-6">
                                <img src="assets/img/VT-2.jpg" alt="">
                            </div>

                            <div class="itemt-text col-sm">

                                <div class="text-1  ">
                                    <div class="text-left col-sm">
                                        <a id="itemt-title" href="VT-2.jsp" style="font-size: 13px;">THE SONG
                                            Apartment</a>
                                        <p style="color: black; font-size: 13px; "><i class="ti-location-pin"></i> Vị
                                            trí: Đường Thi Sách, Vũng Tàu</p>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--Khách sạn 3-->
                        <div class="itemt-1 row mt-2">

                            <div class="itemt-anh col-sm-6">
                                <img src="assets/img/VT-3.jpg" alt="">
                            </div>

                            <div class="itemt-text col-sm">

                                <div class="text-1  ">
                                    <div class="text-left col-sm">
                                        <a id="itemt-title" href="VT-3.jsp" style="font-size: 13px;">The Land Hotel &
                                            Apartment
                                        </a>
                                        <p style="color: black; font-size: 13px; "><i class="ti-location-pin"></i> Vị
                                            trí: Đường Thi Sách, Vũng Tàu</p>
                                    </div>
                                </div>

                            </div>
                        </div>


                        <!--Khách sạn 4-->
                        <div class="itemt-1 row mt-2">

                            <div class="itemt-anh col-sm-6">
                                <img src="assets/img/VT-4.jpg" alt="">
                            </div>

                            <div class="itemt-text col-sm">

                                <div class="text-1  ">
                                    <div class="text-left col-sm">
                                        <a id="itemt-title" href="VT-4.jsp" style="font-size: 13px;">The Land Hotel &
                                            Apartment<i class="ti-star"></i><i class="ti-star"></i><i
                                                class="ti-star"></i></a>
                                        <p style="color: black; font-size: 13px; "><i class="ti-location-pin"></i> Vị
                                            trí: Phường 2, Vũng Tàu</p>
                                    </div>
                                </div>

                            </div>
                        </div>


                        <!--Khách sạn 5-->
                        <div class="itemt-1 row mt-2">

                            <div class="itemt-anh col-sm-6">
                                <img src="assets/img/VT-5.jpg" alt="">
                            </div>

                            <div class="itemt-text col-sm">

                                <div class="text-1  ">
                                    <div class="text-left col-sm">
                                        <a id="itemt-title" href="VT-5.jsp" style="font-size: 13px;">V Boutique Hotel<i
                                                class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i></a>
                                        <p style="color: black; font-size: 13px; "><i class="ti-location-pin"></i> Vị
                                            trí: Phan Huy Ich, Vũng Tàu, Việt Nam </p>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>



                <div class="content-itemt col-sm ">

                    <div class="row">
                        <div class="col-sm-7">
                            <h4 style="font-weight: 600; font-size: 18px; color: #1F4456;">Hao's Homestay</h4>
                            <i class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i><i
                                class="ti-star"></i><i class="ti-star"></i>
                            <p style="color: black; font-size: 13px; "><i class="ti-location-pin"></i> Vị trí: Đường Thi
                                Sách, Vũng Tàu, Việt Nam</p>
                        </div>

                        <div class="col-sm" style="margin-left:125px">
                            <p style="margin-left: 90px; margin-bottom: 0; font-size: 14px; color: rgb(90, 90, 90);">
                                Giá chỉ từ </p>
                            <p class="giamoi" style="margin: 0;color: #2F8BD8;font-weight: 600; margin-left: 70px; ">VND
                                1.000.000</p>
                            <a href="#phongtrong" class="btn btn-primary   " style=" width: 180px;margin-left: 30px;">
                                Đặt Ngay </a>
                        </div>
                    </div>


                    <div class="mt-2 row" style="width: 100%;">
                        <img style="width: 100%;" src="assets/img/VT-3.jpg" alt="">
                    </div>

                    <div class="row mt-2" style="margin-left: 4px; width:  98%;">
                        <div class="anh1 col-sm-4" style="margin: 0;padding: 0;">
                            <img style="width: 95%; height: 100%;" src="assets/img/VT-3.1.jpg" alt="">
                        </div>

                        <div class="anh2 col-sm-4" style="margin: 0;padding: 0;">
                            <img style="width: 95%; height: 100%;" src="assets/img/VT-3.2.jpg" alt="">
                        </div>

                        <div class="anh4 col-sm-4" style="margin: 0px;padding: 0;">
                            <img style="width: 95%; height: 100%;" src="assets/img/VT-3.3.jpg" alt="">
                        </div>
                    </div>



                </div>



                <div class="text-hotel row mt-3">
                    <div class="text-midle col-sm-4" style="border: 1px solid rgb(235, 234, 234); border-radius: 8px;">
                        <p style="margin-left: 20px; font-weight: 600;">Giới thiệu cơ sở lưu trú:</p>
                        <p style="margin-left: 20px; font-size: 15px; color: gray;">Nằm ở Vũng Tàu, cách Bãi Sau 9
                            phút đi bộ và Khu du lịch sinh thái văn hóa Hồ Mây 3.8 km, The Sóng Apartment Sea View - Căn
                            Hộ Biển Nghỉ Dưỡng - Hao's Homestay cung cấp chỗ nghỉ nhìn ra thành phố, có Wi-Fi miễn phí,
                            khu vườn với hồ bơi ngoài trời, phòng tập thể dục và phòng xông hơi khô. Chỗ đậu xe riêng có
                            sẵn trong khuôn viên.</p>
                    </div>



                    <div class="text-right col-sm"
                        style="border: 1px solid rgb(235, 234, 234); border-radius: 8px; margin-left: 10px;">
                        <p style="margin-left: 20px; font-weight: 600;">Trong khu vực:</p>
                        <div class="text-1 row ">
                            <div class="col">
                                <ul style="border-left: none;">
                                    <li style="list-style: none; margin-bottom: 10px;"><i class="ti-game"
                                            style="color: rgb(0, 153, 255);"></i> <i> Gần khu vui chơi, giải trí</i>
                                    </li>
                                    <li style="list-style: none; margin-bottom: 10px;"> <i class="ti-location-pin">Tượng
                                            Chúa Ki-tô 6.6 km</i></li>
                                    <li> <i class="ti-location-pin">Hải đăng Vũng Tàu 6.8 km.</i></li>
                                </ul>
                            </div>
                            <div class="col">
                                <ul style="border-left: none;">
                                    <li style="list-style: none; margin-bottom: 10px;"><i class="ti-location-pin">Vũng
                                            Tàu Beach</i></li>
                                    <li> <i class="ti-location-pin">Khu mua sắm tầng 1</i></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="text-hotel row mt-3">
                    <div class="text-left col-sm-4" style="border: 1px solid rgb(235, 234, 234); border-radius: 8px;">
                        <p style="margin-left: 20px; font-weight: 600;">Tiện ích chính:</p>
                        <ul>
                            <li> <i class="ti-rss-alt" style="color: rgb(0, 153, 255);"> Wifi</i></li>
                            <li> <i class="ti-car" style="color: rgb(0, 153, 255);"> Bãi đậu xe</i> </li>
                            <li> <i class="ti-headphone-alt" style="color: rgb(0, 153, 255);"> Lễ tân 24/24</i> </li>
                            <li> <i class="ti-trash" style="color: rgb(0, 153, 255);"> Sạch sẽ, gọn gàng</i> </li>
                            <li> <i class="ti-shopping-cart" style="color: rgb(0, 153, 255);"> Có khu vực mua sắm</i>
                            </li>
                            <li></li>
                        </ul>
                    </div>

                </div>



                <h4 style="margin-top: 30px;">Những phòng còn trống tại khách sạn:</h4>
                <img style="width: 99%;" src="assets/img/chitietphong.png" alt="">
                <!-----itemt-1----->
				<form action="addmaloaiphong" method="post" class="form-roomtype-LP08">
                <div class="itemt-1 row mt-4" id="phongtrong">

                    <div class="itemt-anh col-sm-4">
                        <img src="assets/img/VT-3.1.jpg" alt="">
                    </div>

                    <div class="itemt-text col-sm">

                        <div class="text-1  row ">
                            <div class="text-left col-sm-8">
                                <a id="itemt-title" href="">Phòng Đôi</a>
                                <p style="color: black; font-size: 13px; "><i class="ti-location-pin"></i>Tầng 4</p>
                                <ul>
                                    <li>
                                        <p>Căn này được trang bị 2 giường</p>
                                    </li>
                                    <li>
                                        <p>2 Phòng ngủ • 1 Ban Công • 1 phòng khách • 1 phòng tắm • 1 phòng bếp 45m²
                                        </p>
                                    </li>
                                    <li>
                                        <p>Sẵn có: Đồ vệ sinh cá nhân miễn phí • Dép • Áo Choàng Tắm • Máy Sấy Tóc</p>
                                    </li>
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

                                <div class="itemt-comment" style="height: 60px;">
                                </div>

                                <div class="itemt-price  text-center">
                                    <p style="width: 100%; font-size: 11px; color: rgb(100, 100, 100);">1 đêm, 4 người
                                        lớn</p>
                                    <del class="giacu">VND 3.140.000 </del>
                                    <p class="giamoi">VND 2.800.000 </p>
                                    <p style="width: 100%; font-size: 11px; color: rgb(100, 100, 100);;">Đã bao gồm thuế
                                        và phí</p>
                                    <br>
                                    <input class="form-control" type="text" name="MaLoaiPhong"
											id="MaLoaiPhong" value="LP08" style="display: none;">
                                    <!-- Modal trigger button -->
                                    <button type="submit" class="btn-datphong btn btn-primary  btn-success mt-2"
                                        data-bs-toggle="modal" data-bs-target="#modalId" data-money="1000000">
                                        Đặt Phòng Ngay<i style="color: white;" class="ti-angle-right"></i>
                                    </button>

                                    <!-- Optional: Place to the bottom of scripts -->
                                    <script>
                                        const myModal = new bootstrap.Modal(
                                            document.getElementById("modalId"),
                                            options,
                                        );
                                    </script>
                                </div>
                            </div>



                        </div>

                    </div>
                </div>
                </form>
                <!-----itemt-2----->
				<form action="addmaloaiphong" method="post" class="form-roomtype-LP09">
                <div class="itemt-1 row mt-2">

                    <div class="itemt-anh col-sm-4">
                        <img src="assets/img/VT-3.2.jpg" alt="">
                    </div>

                    <div class="itemt-text col-sm">

                        <div class="text-1  row ">
                            <div class="text-left col-sm-8">
                                <a id="itemt-title" href="">Phòng Giường Đôi có Ban công</a>
                                <p style="color: black; font-size: 13px; "><i class="ti-location-pin"></i>Tầng 5</p>
                                <ul>
                                    <li>
                                        <p>1 Giường ngủ • 1 Ban Công • 1 phòng khách • 1 phòng tắm • 1 phòng bếp 25m²
                                        </p>
                                    </li>
                                    <li>
                                        <p>Sẵn có: Đồ vệ sinh cá nhân miễn phí • Dép • Áo Choàng Tắm • Máy Sấy Tóc</p>
                                    </li>
                                    <li>
                                        <p>Ban công đô thị xanh</p>
                                    </li>
                                    <li>
                                        <p> <i class="ti-check"></i> <b style="color: green;">Miễn phí hủy</b></p>
                                    </li>





                                </ul>
                            </div>

                            <div class="text-right col-sm">

                                <div class="itemt-comment" style="height: 60px;">
                                </div>

                                <div class="itemt-price  text-center">
                                    <p style="width: 100%; font-size: 11px; color: rgb(100, 100, 100);">1 đêm, 2 người
                                        lớn</p>
                                    <del class="giacu">VND 2.040.000 </del>
                                    <p class="giamoi">VND 1.700.000 </p>
                                    <p style="width: 100%; font-size: 11px; color: rgb(100, 100, 100);;">Đã bao gồm thuế
                                        và phí</p>
                                    <br>
                                    <input class="form-control" type="text" name="MaLoaiPhong"
											id="MaLoaiPhong" value="LP09" style="display: none;">
                                    <!-- Modal trigger button -->
                                    <button type="submit" class="btn-datphong btn btn-primary  btn-success mt-2"
                                        data-bs-toggle="modal" data-bs-target="#modalId" data-money="1700000">
                                        Đặt Phòng Ngay<i style="color: white;" class="ti-angle-right"></i>
                                    </button>
                                </div>
                            </div>



                        </div>

                    </div>
                </div>
				</form>
                <!-----itemt-3----->
				<form action="addmaloaiphong" method="post" class="form-roomtype-LP10">
                <div class="itemt-1 row mt-2">

                    <div class="itemt-anh col-sm-4">
                        <img src="assets/img/VT-3.3.jpg" alt="">
                    </div>

                    <div class="itemt-text col-sm">

                        <div class="text-1  row ">
                            <div class="text-left col-sm-8">
                                <a id="itemt-title" href="">Studio Deluxe</a>
                                <p style="color: black; font-size: 13px; "><i class="ti-location-pin"></i>Tầng 4</p>
                                <ul>
                                    <li>
                                        <p>Căn Hộ 1 giường ngủ</p>
                                    </li>
                                    <li>
                                        <p>1 giường ngủ • 1 phòng khách • 1 phòng tắm • 1 phòng bếp • 35m²</p>
                                    </li>
                                    <li>
                                        <p>Ban công view biển, phòng rộng rãi</p>
                                    </li>
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

                                <div class="itemt-comment" style="height: 60px;">
                                </div>

                                <div class="itemt-price  text-center">
                                    <p style="width: 100%; font-size: 11px; color: rgb(100, 100, 100);">1 đêm, 2 người
                                        lớn</p>
                                    <del class="giacu">VND 1.340.000 </del>
                                    <p class="giamoi">VND 1.180.000 </p>
                                    <p style="width: 100%; font-size: 11px; color: rgb(100, 100, 100);;">Đã bao gồm thuế
                                        và phí</p>
                                    <br>
                                    <input class="form-control" type="text" name="MaLoaiPhong"
											id="MaLoaiPhong" value="LP10" style="display: none;">
                                    <!-- Modal trigger button -->
                                    <button type="submit" class="btn-datphong btn btn-primary  btn-success mt-2"
                                        data-bs-toggle="modal" data-bs-target="#modalId" data-money="1180000">
                                        Đặt Phòng Ngay<i style="color: white;" class="ti-angle-right"></i>
                                    </button>
                                </div>
                            </div>



                        </div>

                    </div>
                </div>
                </form>
                <!-----itemt-4----->
				<form action="addmaloaiphong" method="post" class="form-roomtype-LP11">
                <div class="itemt-1 row mt-2">

                    <div class="itemt-anh col-sm-4">
                        <img src="assets/img/VT-3.4.jpg" alt="">
                    </div>

                    <div class="itemt-text col-sm">

                        <div class="text-1  row ">
                            <div class="text-left col-sm-8">
                                <a id="itemt-title" href="">Phòng 4 Người Nhìn Ra Biển</a>
                                <p style="color: black; font-size: 13px; "><i class="ti-location-pin"></i>Tầng 3</p>
                                <ul>
                                    <li>
                                        <p>Căn Hộ 2 Phòng Ngủ</p>
                                    </li>
                                    <li>
                                        <p>2 Giường • 1 phòng khách • 1 phòng tắm • 1 phòng bếp
                                            • 90m²</p>
                                    </li>
                                    <li>
                                        <p>Ban công view biển, đồ ăn miễn phí</p>
                                    </li>
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

                                <div class="itemt-comment" style="height: 60px;">
                                </div>

                                <div class="itemt-price  text-center">
                                    <p style="width: 100%; font-size: 11px; color: rgb(100, 100, 100);">1 đêm, 2 người
                                        lớn</p>
                                    <del class="giacu">VND 4.140.000 </del>
                                    <p class="giamoi">VND 3.780.000 </p>
                                    <p style="width: 100%; font-size: 11px; color: rgb(100, 100, 100);;">Đã bao gồm thuế
                                        và phí</p>
                                    <br>
                                    <input class="form-control" type="text" name="MaLoaiPhong"
											id="MaLoaiPhong" value="LP11" style="display: none;">
                                    <!-- Modal trigger button -->
                                    <button type="submit" class="btn-datphong btn btn-primary  btn-success mt-2"
                                        data-bs-toggle="modal" data-bs-target="#modalId" data-money="3780000">
                                        Đặt Phòng Ngay<i style="color: white;" class="ti-angle-right"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </form>
                
                <form action="addchitietphong" method="post" class="form-payment">	
					<div class="modal fade" id="modalId" tabindex="-1"
						data-bs-backdrop="static" data-bs-keyboard="false" role="dialog"
						aria-labelledby="modalTitleId" aria-hidden="true">
						<div
							class="modal-dialog modal-dialog-scrollable modal-dialog-centered modal-xl"
							role="document">
							<div class="modal-content">
	
								<!--modal-header-->
								<div class="modal-header">
									<h3 class="modal-title" id="modalTitleId"
										style="margin-left: 38%;">Thông Tin Đặt Phòng</h3>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<!--modal-body-->
								<div class="modal-body">
	
	
									<!--Ho ten-->
									<div class="input-row row mt-2">
										<div class="col-3 ">
											<label class="form-label " for="hoten">Họ tên</label>
										</div>
										<div class="col  ">
											<input class="form-control" type="text" name="hoten"
												id="hoten"> <span style="color: red; float: left;">*</span>
										</div>
	
									</div>
	
									<!--Số điện thoại-->
									<div class="input-row row mt-2">
										<div class="col-3 ">
											<label class="form-label " for="phone">Số điện thoại</label>
										</div>
										<div class="col  ">
											<input class="form-control" type="text" name="phone"
												id="phone"> <span style="color: red; float: left;">*</span>
										</div>
	
									</div>
	
									<!--Ngày nhận phòng-->
	
									<div class="input-row row mt-2">
										<div class="col-3 ">
											<label class="form-label " for="ngaynhan">Ngày nhận
												phòng</label>
										</div>
										<div class="col  ">
											<input class="form-control" type="date" name="ngaynhan"
												id="ngaynhan"> <span style="color: red; float: left;">*</span>
										</div>
	
									</div>
	
									<!--Ngày trả phòng-->
	
									<div class="input-row row mt-2">
										<div class="col-3 ">
											<label class="form-label " for="ngaytra">Ngày trả
												phòng</label>
										</div>
										<div class="col  ">
											<input class="form-control" type="date" name="ngaytra"
												id="ngaytra"> <span style="color: red; float: left;">*</span>
										</div>
	
									</div>
									<!--Số người lớn-->
	
									<div class="input-row row mt-2">
										<div class="col-3 ">
											<label class="form-label " for="nguoilon">Số người lớn</label>
										</div>
										<div class="col  ">
											<input style="width: 110px; padding-left: 10px;"
												class="form-control" type="number" name="nguoilon"
												id="nguoilon" placeholder="số người" min="1"> <span
												style="color: red; float: left;">*</span>
										</div>
	
									</div>
									<!--Số trẻ em-->
	
									<div class="input-row row mt-2">
										<div class="col-3 ">
											<label class="form-label " for="treem">Số trẻ em</label>
										</div>
										<div class="col  ">
											<input style="width: 110px; padding-left: 10px;"
												class="form-control" type="number" name="treem" id="treem"
												placeholder="số người" min="0"> <span
												style="color: red; float: left;">*</span>
										</div>
	
									</div>
								</div>
	
								<!--modal-footer-->
								<div class="modal-footer d-flex justify-content-center ">
	
									<button id="thanhtoan" type="submit" class="btn btn-success   "
										style="width: 70%;">Thanh Toán</button>
								</div>
							</div>
						</div>
					</div>
				</form>
            </div>
        </div>
    </div>
    <script src="assets/javaScript/chitietphong.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/noUiSlider/15.7.0/nouislider.min.js"></script>
    <script src="assets/bootstrap/bootstrap.bundle.min.js"></script>
</body>

</html>