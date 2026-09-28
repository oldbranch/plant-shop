package xtu.edu.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import xtu.edu.Entity.CartFlowerVo;
import xtu.edu.Util.DBUtil;

public class CartFlowerVoDao {
	public ArrayList<CartFlowerVo> selectCartByUserId(Integer user_id){
		ArrayList<CartFlowerVo> cartflowerList=new ArrayList<CartFlowerVo>();
		//建立连接
		Connection conn=DBUtil.getConnection("flower_store_db","root", "123456");
		try {
			String sql="select c.id,b.picn,b.title,b.price,c.number from db_cart c,db_flower b where c.flower_id=b.id and c.user_id=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, user_id);
			ResultSet rs=ps.executeQuery();
			//取结果集中的每条记录
			while(rs.next()){
				Integer id=rs.getInt("id");
				String picn=rs.getString("picn");
				String title=rs.getString("title");
				Double price=rs.getDouble("price");
				Integer num=rs.getInt("number");
				
				//形成book对象，添加到集合列表中
				CartFlowerVo cartflowervo=new CartFlowerVo();
				cartflowervo.setId(id);
				cartflowervo.setPicn(picn);
				cartflowervo.setTitle(title);
				cartflowervo.setPrice(price);
				cartflowervo.setNum(num);
				cartflowerList.add(cartflowervo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(conn);
		}
		return cartflowerList;
	}
}
