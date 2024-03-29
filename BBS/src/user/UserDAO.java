package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public UserDAO(){
	try {
		String dbURL = "jdbc:mysql://localhost:3306/BBS?characterEncoding=UTF-8&serverTimezone=UTC";
		String dbID = "root";
		String dbPassword = "vmfhtjqj1";
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
	} catch (Exception e) {
		e.printStackTrace();
		}
	}
	
	public int login(String userID, String userPassword) {
		String SQL = "SELECT userPassword FROM USER WHERE userID = ?";
	try {
		pstmt = conn.prepareStatement(SQL);
		pstmt.setString(1,  userID);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			if(rs.getString(1).equals(userPassword))
				return 1; // 로그인성공
			else
				return 0; // 비밀번호 x
		}
		return -1; //아이디 x
	} catch (Exception e) {
		e.printStackTrace();
	}
	return -2; // db 오류
	}
	

	public int join(User user) {
		String SQL = "INSER INTO USER VALUES (?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(1, user.getUserPassword());
			pstmt.setString(1, user.getUserName());
			pstmt.setString(1, user.getUserGender());
			pstmt.setString(1, user.getUserEmail());
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류 
	}
}