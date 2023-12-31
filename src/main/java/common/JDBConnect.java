package common;

import javax.servlet.ServletContext;
import java.sql.*;

public class JDBConnect {
    public Connection con;
    public Statement stmt;
    public PreparedStatement psmt;
    public ResultSet rs;

    // 기본 생성자
    public JDBConnect() {
        try {
            // JDBC 드라이버 로드
            Class.forName("org.mariadb.jdbc.Driver");

            // DB에 연결
            String url = "jdbc:mariadb://localhost:3306/mytestone";
            String id = "root";
            String pwd = "12345";
            con = DriverManager.getConnection(url, id, pwd);

            System.out.println("DB 연결 성공(기본 생성자)");
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }

    // 연결 해제(자원 반납)
    public void close() {
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (psmt != null) psmt.close();
            if (con != null) con.close();

            System.out.println("JDBC 자원 해제");
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }

    public JDBConnect(String driver, String url, String id, String pwd){
        try{
            Class.forName(driver);
            con = DriverManager.getConnection(url, id, pwd);

            System.out.println("DB 연결 성공(인수 생성자 1)");
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }
    public JDBConnect(ServletContext application) {
        try {
            // JDBC 드라이버 로드
            String driver = application.getInitParameter("MariaDriver");
            Class.forName(driver);

            // DB에 연결
            String url = application.getInitParameter("MariaURL");
            String id = application.getInitParameter("MariaId");
            String pwd = application.getInitParameter("MariaPwd");
            con = DriverManager.getConnection(url, id, pwd);

            System.out.println("DB 연결 성공(인수 생성자 2)");
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }
}