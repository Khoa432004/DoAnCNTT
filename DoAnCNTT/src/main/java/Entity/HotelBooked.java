package Entity;

import java.time.LocalDate;

public class HotelBooked {
	private int MaHoaDon;
	private String hoTen;
	private String SDT;
	private String MaPhong;
	private String tenPhong;
	private String ViTri;
	private LocalDate NgayNhanPhong;
	private LocalDate NgayTraPhong;
	private int GiaThuePhong;
	private int TongTien;

	public HotelBooked(int maHoaDon, String hoTen, String sDT, String maPhong, String tenPhong, String viTri,
			LocalDate ngayNhanPhong, LocalDate ngayTraPhong, int giaThuePhong, int tongTien) {
		super();
		MaHoaDon = maHoaDon;
		this.hoTen = hoTen;
		SDT = sDT;
		MaPhong = maPhong;
		this.tenPhong = tenPhong;
		ViTri = viTri;
		NgayNhanPhong = ngayNhanPhong;
		NgayTraPhong = ngayTraPhong;
		GiaThuePhong = giaThuePhong;
		TongTien = tongTien;
	}
	public String getMaPhong() {
		return MaPhong;
	}
	public void setMaPhong(String maPhong) {
		MaPhong = maPhong;
	}
	public int getMaHoaDon() {
		return MaHoaDon;
	}
	public void setMaHoaDon(int maHoaDon) {
		MaHoaDon = maHoaDon;
	}
	public String getHoTen() {
		return hoTen;
	}
	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}
	public String getSDT() {
		return SDT;
	}
	public void setSDT(String sDT) {
		SDT = sDT;
	}
	public String getTenPhong() {
		return tenPhong;
	}
	public void setTenPhong(String tenPhong) {
		this.tenPhong = tenPhong;
	}
	public String getViTri() {
		return ViTri;
	}
	public void setViTri(String viTri) {
		ViTri = viTri;
	}
	public LocalDate getNgayNhanPhong() {
		return NgayNhanPhong;
	}
	public void setNgayNhanPhong(LocalDate ngayNhanPhong) {
		NgayNhanPhong = ngayNhanPhong;
	}
	public LocalDate getNgayTraPhong() {
		return NgayTraPhong;
	}
	public void setNgayTraPhong(LocalDate ngayTraPhong) {
		NgayTraPhong = ngayTraPhong;
	}
	public int getGiaThuePhong() {
		return GiaThuePhong;
	}
	public void setGiaThuePhong(int giaThuePhong) {
		GiaThuePhong = giaThuePhong;
	}
	public int getTongTien() {
		return TongTien;
	}
	public void setTongTien(int tongTien) {
		TongTien = tongTien;
	}
	
}
