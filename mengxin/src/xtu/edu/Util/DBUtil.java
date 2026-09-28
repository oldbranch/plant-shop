package xtu.edu.Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Statement;
/**
 * 本类为数据库工具类，主要功能有：得到（或建立）数据库的连接和关闭连接
 *
 */
public class DBUtil {

	/**
	 * 创建数据库连接
	 */
	public static Connection getConnection(String databaseName,String user,String password) {
		Connection conn=null;
		try {
			// 1.加载驱动
			Class.forName("com.mysql.jdbc.Driver");
			// 2.得到数据库连接
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+databaseName+"?useUnicode=true&characterEncoding=UTF-8", user, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}

	
	/**
	 * 关闭结果集
	 */
	public static void close(ResultSet rs) {
		if(rs!=null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	/**
	 * 关闭语句对象
	 */
	public static void close(Statement st) {
		if(st!=null) {
			try {
				st.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	/**
	 * 关闭数据库连接
	 * 
	 * 如果你不使用连接池，只需关闭数据库连接就可以了；若使用连接池，先需要提前关闭结果集对象和语句对象（如果有的话）。
	 */
	public static void close(Connection conn) {
		if(conn!=null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
}



