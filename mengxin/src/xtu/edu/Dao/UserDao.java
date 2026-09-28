package xtu.edu.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import xtu.edu.Entity.User;
import xtu.edu.Util.DBUtil;


public class UserDao {
	public User selectByUname(String username) {
		User user = null;
		Connection conn = DBUtil.getConnection("flower_store_db", "root", "your-mysql-password");
		try {
			String sql="select * from db_user where username=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, username);
			ResultSet rs=ps.executeQuery();
			//System.out.println("rs.next()="+rs.next());
			if (rs.next()) {
				user = new User();
				user.setId(rs.getInt("id"));
				user.setUname(rs.getString("username"));
				user.setPassWord(rs.getString("password"));
//				System.out.println("user="+user);
			} 
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(conn);
		}
		return user;
	}
    
	public Integer insert(String uname,String password) {
		Integer n = null;
		Connection conn = DBUtil.getConnection("flower_store_db", "root", "your-mysql-password");
		try {
			String sql="insert into db_user(username,password) values(?,?);";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, uname);
			ps.setString(2, password);
			n=ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(conn);
		}
		return n;
	}

}
