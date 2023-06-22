package Controller;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import DB.DBConnection;

import Model.Buku;

public class BukuDAO {

    static Connection conn;
    static PreparedStatement ps;
    static ResultSet rs;
    static String sql;

    public static int save(Buku b) throws ClassNotFoundException {
        int status = 0;
        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("INSERT INTO `pustakakita`.`tbl_buku` (`id_buku`, `judul`, `penulis`, `penerbit`, `harga`, `stok`) VALUES (0,?,?,?,?,?);");
            ps.setString(1, b.getJudul());
            ps.setString(2, b.getPenulis());
            ps.setString(3, b.getDeskripsi());
            ps.setDouble(4, b.getHarga());
            ps.setInt(5, b.getGambar());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int update(Buku b) throws ClassNotFoundException {
        int status = 0;
        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("update pustakakita.tbl_buku set judul_buku=?,penulis=?,penerbit=?,harga=?,stok=? where id_buku=?");
            ps.setString(1, b.getJudul());
            ps.setString(2, b.getPenulis());
            ps.setString(3, b.getDeskripsi());
            ps.setDouble(4, b.getHarga());
            ps.setInt(5, b.getGambar());
            ps.setInt(6, b.getId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(Buku b) throws ClassNotFoundException {
        int status = 0;
        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("delete from pustakakita.tbl_buku where id_buku=?");
            ps.setInt(1, b.getId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }

        return status;
    }

    public static List<Buku> getAllRecords() throws ClassNotFoundException {
        List<Buku> list = new ArrayList<Buku>();

        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("select * from pustakakita.tbl_buku");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Buku u = new Buku();
                u.setId(rs.getInt("id_buku"));
                u.setJudul(rs.getString("judul"));
                u.setPenulis(rs.getString("penulis"));
                u.setDeskripsi(rs.getString("penerbit"));
                u.setHarga(rs.getDouble("harga"));
                u.setGambar(rs.getInt("stok"));
                list.add(u);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public static Buku getRecordById(int id) throws ClassNotFoundException {
        Buku u = null;
        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("select * from pustakakita.tbl_buku where id_buku=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                u = new Buku();
                u.setId(rs.getInt("id_buku"));
                u.setJudul(rs.getString("judul"));
                u.setPenulis(rs.getString("penulis"));
                u.setDeskripsi(rs.getString("penerbit"));
                u.setHarga(rs.getDouble("harga"));
                u.setGambar(rs.getInt("stok"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return u;
    }
}