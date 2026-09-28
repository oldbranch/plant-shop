package xtu.edu.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

import xtu.edu.Entity.OrderVo;
import xtu.edu.Util.DBUtil;

public class OrderVoDao {
	public ArrayList<OrderVo> selectOrderVoByUserId(Integer id) {
		ArrayList<OrderVo> orderList=new ArrayList<OrderVo>();
		OrderVo ordervo = new OrderVo();
		Connection conn=DBUtil.getConnection("flower_store_db","root", "your-mysql-password");
		try {
			String sql = "select * from db_order where userId = ?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				Timestamp date = rs.getTimestamp("date");
				String status = rs.getString("status");
				Double total = rs.getDouble("total");
				ordervo.setId(id);
				ordervo.setDate(date);
				ordervo.setStatus(status);
				ordervo.setTotal(total);
				orderList.add(ordervo);
			}
			DBUtil.close(conn);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(conn);
		}
		
		return orderList;
	}
}
