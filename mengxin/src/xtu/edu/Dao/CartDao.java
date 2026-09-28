package xtu.edu.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import xtu.edu.Entity.Cart;
import xtu.edu.Util.DBUtil;

public class CartDao {
	public Cart selectByUserIdAndFlowerId(Integer userId,Integer flowerId) {
		Cart cart = null;
		//建立连接
		Connection conn=DBUtil.getConnection("flower_store_db","root", "123456");
		String sql = "select * from db_cart where user_id=? and flower_id=?";
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, userId);
			ps.setInt(2, flowerId);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				int id=rs.getInt("id");
				cart=new Cart();
				cart.setId(id);
				cart.setUserId(userId);
				cart.setFlowerId(flowerId);
				cart.setNum(rs.getInt("number"));
			}
			DBUtil.close(conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(conn);
		}
		return cart;
	}
	
	public Integer insert(Cart cart) {
		Integer n=null;
		Connection conn=DBUtil.getConnection("flower_store_db","root", "123456");
		try {
			String sql="insert into db_cart(user_id,flower_id,number) values(?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, cart.getUserId());
			ps.setInt(2, cart.getFlowerId());
			ps.setInt(3, cart.getNum());
			n=ps.executeUpdate();
			DBUtil.close(conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(conn);
		}
		return n;
	}
	
	public Integer updateNumById(Integer number,Integer id) {
		Integer n=null;
		Connection conn=DBUtil.getConnection("flower_store_db","root", "123456");
		try {
			String sql="update db_cart set number=? where id=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, number);
			ps.setInt(2, id);
			n=ps.executeUpdate();
			DBUtil.close(conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(conn);
		}
		return n;
	}
	
	public Integer deleteById(Integer id)
	{
		Integer n=null;
		Connection conn=DBUtil.getConnection("flower_store_db","root", "123456");
		try {
			String sql="delete from db_cart where id=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			n=ps.executeUpdate();
			DBUtil.close(conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(conn);
		}
		return n;
	}
}
