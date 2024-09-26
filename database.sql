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


INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP01', 'LP01');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP02', 'LP01');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP03', 'LP01');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP04', 'LP02');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP05', 'LP02');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP06', 'LP02');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP07', 'LP03');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP08', 'LP03');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP09', 'LP03');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP010', 'LP04');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP011', 'LP04');
INSERT INTO room (MaPhong, MaLoaiPhong) VALUES ('MP012', 'LP04');