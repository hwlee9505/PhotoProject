package main;

import java.sql.*;
import java.util.ArrayList;

public class PhotoDAO {


    DBConnection dc = new DBConnection();

    Statement stmt = null;
    ResultSet rs = null;
    PreparedStatement pstmt = null;

    public ArrayList<Photo> selectAll() {
        dc.conDB();
        dc.loadDB();
        ArrayList<Photo> arr = new ArrayList();
        try {
            stmt = dc.con.createStatement();
            rs = stmt.executeQuery("select * from photo");
            while (rs.next()) {
                Photo p = new Photo();
                p.photo_id = (Integer.parseInt(rs.getString(1)));
                p.name = (rs.getString(2));
                p.writer = (rs.getString(3));
                p.date = (rs.getString(4));
                arr.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return arr;
    }

    public int insertPhoto(String name, String writer, String date) {
        dc.conDB();
        dc.loadDB();
        try {
            pstmt = dc.con.prepareStatement("insert into photo (name, writer, date) values (?,?,?)");
            pstmt.setString(1, name);
            pstmt.setString(2, writer);
            pstmt.setString(3, date);
            return pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public int deletePhoto(int id) throws SQLException {
        dc.conDB();
        dc.loadDB();
        try {
            pstmt = dc.con.prepareStatement("delete from photo where photo_id = ?");
            pstmt.setInt(1, id);

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pstmt.executeUpdate();
    }

    public int updatePhoto(int id, String name, String writer, String date) throws SQLException {
        dc.conDB();
        dc.loadDB();
        try {
            pstmt = dc.con.prepareStatement("update photo set name = ?, writer = ?, date = ? where photo_id = ?");
            pstmt.setString(1, name);
            pstmt.setString(2, writer);
            pstmt.setString(3, date);
            pstmt.setInt(4, id);

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pstmt.executeUpdate();
    }
}
