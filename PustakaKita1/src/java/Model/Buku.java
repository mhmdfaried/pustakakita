package Model;

public class Buku {
private double harga;
private int id_buku;
private String judul_buku,penulis,deskripsi;
private int gambar;
public int getId() {
	return id_buku;
}
public void setId(int id) {
	this.id_buku = id;
}
public String getJudul() {
	return judul_buku;
}
public void setJudul(String judul_buku) {
	this.judul_buku = judul_buku;
}
public String getPenulis() {
	return penulis;
}
public void setPenulis(String penulis) {
	this.penulis = penulis;
}
public String getDeskripsi() {
	return deskripsi;
}
public void setDeskripsi(String deskripsi) {
	this.deskripsi = deskripsi;
}
public double getHarga() {
	return harga;
}
public void setHarga(double harga) {
	this.harga = harga;
}
public int getGambar() {
	return gambar;
}
public void setGambar(int gambar) {
	this.gambar = gambar;
}

}