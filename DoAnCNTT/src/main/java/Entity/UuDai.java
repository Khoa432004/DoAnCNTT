package Entity;

public class UuDai {
    private int maUuDai;
    private String tenUuDai;
    private double giaTri;
    private int loaiUuDai;
    private String moTa;

    public UuDai(int maUuDai, String tenUuDai, double giaTri, int loaiUuDai, String moTa) {
        this.maUuDai = maUuDai;
        this.tenUuDai = tenUuDai;
        this.giaTri = giaTri;
        this.loaiUuDai = loaiUuDai;
        this.moTa = moTa;
    }

    // Getters and Setters
    public int getMaUuDai() { return maUuDai; }
    public void setMaUuDai(int maUuDai) { this.maUuDai = maUuDai; }

    public String getTenUuDai() { return tenUuDai; }
    public void setTenUuDai(String tenUuDai) { this.tenUuDai = tenUuDai; }

    public double getGiaTri() { return giaTri; }
    public void setGiaTri(double giaTri) { this.giaTri = giaTri; }

    public int getLoaiUuDai() { return loaiUuDai; }
    public void setLoaiUuDai(int loaiUuDai) { this.loaiUuDai = loaiUuDai; }

    public String getMoTa() { return moTa; }
    public void setMoTa(String moTa) { this.moTa = moTa; }
}
