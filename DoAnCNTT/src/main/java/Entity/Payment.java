package Entity;

import java.time.LocalDate;

public class Payment {
	private int MaHoaDon;
	private String TK;
	private String HoTen;
	private String SDT;
	private LocalDate NgayNhanPhong;
	private LocalDate NgayTraPhong;
	private int SoNgayThue;
	private int SoNguoiLon;
	private int SoTreEm;
	private int GiaThuePhong;
	private int TongTien;
	private String MaPhong;
	
	public Payment(int maHoaDon, String tK, String hoTen, String sDT, LocalDate ngayNhanPhong, LocalDate ngayTraPhong,
			int soNgayThue, int soNguoiLon, int soTreEm, int giaThuePhong, int tongTien, String maPhong) {
		super();
		MaHoaDon = maHoaDon;
		TK = tK;
		HoTen = hoTen;
		SDT = sDT;
		NgayNhanPhong = ngayNhanPhong;
		NgayTraPhong = ngayTraPhong;
		SoNgayThue = soNgayThue;
		SoNguoiLon = soNguoiLon;
		SoTreEm = soTreEm;
		GiaThuePhong = giaThuePhong;
		TongTien = tongTien;
		MaPhong = maPhong;
	}
	public int getMaHoaDon() {
		return MaHoaDon;
	}
	public void setMaHoaDon(int maHoaDon) {
		MaHoaDon = maHoaDon;
	}
	public String getTK() {
		return TK;
	}
	public void setTK(String tK) {
		TK = tK;
	}
	public String getHoTen() {
		return HoTen;
	}
	public void setHoTen(String hoTen) {
		HoTen = hoTen;
	}
	public String getSDT() {
		return SDT;
	}
	public void setSDT(String sDT) {
		SDT = sDT;
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
	public int getSoNgayThue() {
		return SoNgayThue;
	}
	public void setSoNgayThue(int soNgayThue) {
		SoNgayThue = soNgayThue;
	}
	public int getSoNguoiLon() {
		return SoNguoiLon;
	}
	public void setSoNguoiLon(int soNguoiLon) {
		SoNguoiLon = soNguoiLon;
	}
	public int getSoTreEm() {
		return SoTreEm;
	}
	public void setSoTreEm(int soTreEm) {
		SoTreEm = soTreEm;
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
	public String getMaPhong() {
		return MaPhong;
	}
	public void setMaPhong(String maPhong) {
		MaPhong = maPhong;
	}
}
