package main;

import java.sql.*;

public class DBConnection {

    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    String url = "jdbc:mysql://localhost/photoDB?useSSL=false";
    String user = "root";
    String password = "0330";
    String query = "select * from photo";

    // 1.드라이버 로딩
    public void loadDB() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public void conDB() {
        // 2.연결
        try {
            con = DriverManager.getConnection(url, user, password);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public void exitDB() {
        // 3.해제
        try {
            if (con != null)
                con.close();
        } catch (SQLException e) {
        }
    }

}
