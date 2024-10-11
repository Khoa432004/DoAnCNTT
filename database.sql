use doancntt;
-- Create the 'account' table
CREATE TABLE account (
    TK VARCHAR(50) PRIMARY KEY,
    MK VARCHAR(50) NOT NULL
);

-- Create the 'roomtype' table
CREATE TABLE roomtype (
    MaLoaiPhong VARCHAR(50) PRIMARY KEY,
    ViTri VARCHAR(45) NOT NULL,
    Gia int NOT NULL,
    TenLoaiPhong VARCHAR(45) NOT NULL
);

-- Create the 'room' table
CREATE TABLE room (
    MaPhong VARCHAR(45) PRIMARY KEY, 
    MaLoaiPhong VARCHAR(45), 
    FOREIGN KEY (MaLoaiPhong) REFERENCES roomtype(MaLoaiPhong) ON DELETE CASCADE
);

-- Create the 'payment' table
CREATE TABLE payment (
    MaHoaDon int PRIMARY KEY,
    TK VARCHAR(45),
    HoTen VARCHAR(45) NOT NULL,
    SDT VARCHAR(10) NOT NULL,
    NgayNhanPhong DATETIME(3) NOT NULL,
    NgayTraPhong DATETIME(3) NOT NULL,
    SoNgayThue int NOT NULL,
    SoNguoiLon int NOT NULL,
    SoTreEm int NOT NULL,
    GiaThuePhong int NOT NULL,
    TongTien int NOT NULL,
    MaPhong VARCHAR(45),
    FOREIGN KEY (TK) REFERENCES account(TK) ON DELETE CASCADE,
    FOREIGN KEY (MaPhong) REFERENCES room(MaPhong) ON DELETE CASCADE
);

INSERT INTO roomtype (MaLoaiPhong, ViTri,Gia,TenLoaiPhong) VALUES ('LP01', 'VT1-1',1000000,"Phòng Giường Đôi Có Ban Công");
INSERT INTO roomtype (MaLoaiPhong, ViTri,Gia,TenLoaiPhong) VALUES ('LP02', 'VT1-2',700000,"Phòng Giường Đôi có Ban công và Nhìn ra Biển");
INSERT INTO roomtype (MaLoaiPhong, ViTri,Gia,TenLoaiPhong) VALUES ('LP03', 'VT1-3',2780000,"Studio Superior");
INSERT INTO roomtype (MaLoaiPhong, ViTri,Gia,TenLoaiPhong) VALUES ('LP04', 'VT1-4',3780000,"Phòng 4 Người Nhìn Ra Biển");
INSERT INTO roomtype (MaLoaiPhong, ViTri,Gia,TenLoaiPhong) VALUES ('LP05', 'VT1-5',1000000,"Căn Hộ 1 Phòng Ngủ");
INSERT INTO roomtype (MaLoaiPhong, ViTri,Gia,TenLoaiPhong) VALUES ('LP06', 'VT1-6',2000000,"Căn Hộ 2 Phòng Ngủ");
INSERT INTO roomtype (MaLoaiPhong, ViTri,Gia,TenLoaiPhong) VALUES ('LP07', 'VT1-7',2780000,"Căn Hộ 3 Phòng Ngủ");
INSERT INTO roomtype (MaLoaiPhong, ViTri,Gia,TenLoaiPhong) VALUES ('LP08', 'VT1-8',2800000,"Phòng Đôi");
INSERT INTO roomtype (MaLoaiPhong, ViTri,Gia,TenLoaiPhong) VALUES ('LP09', 'VT1-9',1700000,"Phòng Giường Đôi có Ban công");
INSERT INTO roomtype (MaLoaiPhong, ViTri,Gia,TenLoaiPhong) VALUES ('LP10', 'VT1-10',1180000,"Studio Deluxe");
INSERT INTO roomtype (MaLoaiPhong, ViTri,Gia,TenLoaiPhong) VALUES ('LP11', 'VT1-11',3780000,"Phòng 4 Người Nhìn Ra Biển");
INSERT INTO roomtype (MaLoaiPhong, ViTri,Gia,TenLoaiPhong) VALUES ('LP12', 'VT1-12',1000000,"Phòng Giường Đôi Có Ban Công");
INSERT INTO roomtype (MaLoaiPhong, ViTri,Gia,TenLoaiPhong) VALUES ('LP13', 'VT1-13',700000,"Phòng Giường Đôi có Ban công và Nhìn ra Biển");
INSERT INTO roomtype (MaLoaiPhong, ViTri,Gia,TenLoaiPhong) VALUES ('LP14', 'VT1-14',2780000,"Studio Superior");
INSERT INTO roomtype (MaLoaiPhong, ViTri,Gia,TenLoaiPhong) VALUES ('LP15', 'VT1-15',1000000,"Phòng giường đôi");
INSERT INTO roomtype (MaLoaiPhong, ViTri,Gia,TenLoaiPhong) VALUES ('LP16', 'VT1-16',700000,"Phòng Giường Đôi có Ban công và Nhìn ra Biển");
INSERT INTO roomtype (MaLoaiPhong, ViTri,Gia,TenLoaiPhong) VALUES ('LP17', 'VT1-17',2780000,"Studio Superior");

INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP01', 'LP01');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP02', 'LP01');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP03', 'LP01');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP04', 'LP02');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP05', 'LP02');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP06', 'LP02');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP07', 'LP03');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP08', 'LP03');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP09', 'LP03');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP10', 'LP04');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP11', 'LP04');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP12', 'LP04');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP13', 'LP05');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP14', 'LP05');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP15', 'LP05');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP16', 'LP06');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP17', 'LP06');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP18', 'LP06');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP19', 'LP07');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP20', 'LP07');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP21', 'LP07');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP22', 'LP08');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP23', 'LP08');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP24', 'LP08');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP25', 'LP09');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP26', 'LP09');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP27', 'LP09');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP28', 'LP10');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP29', 'LP10');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP30', 'LP10');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP31', 'LP11');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP32', 'LP11');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP33', 'LP11');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP34', 'LP12');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP35', 'LP12');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP36', 'LP12');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP37', 'LP13');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP38', 'LP13');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP39', 'LP13');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP40', 'LP14');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP41', 'LP14');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP42', 'LP14');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP43', 'LP15');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP44', 'LP15');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP45', 'LP15');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP46', 'LP16');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP47', 'LP16');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP48', 'LP16');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP49', 'LP17');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP50', 'LP17');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP51', 'LP17');