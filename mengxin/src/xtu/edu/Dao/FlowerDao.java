package xtu.edu.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import xtu.edu.Entity.Flower;
import xtu.edu.Util.DBUtil;

public class FlowerDao {
	public ArrayList<Flower> selectAll() {
		ArrayList<Flower> flowerlist = new ArrayList<Flower>();
		Connection conn=DBUtil.getConnection("flower_store_db","root", "123456");
		String sql="select * from db_flower";
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			//取结果集中的每条记录
			while(rs.next()){
				Integer id=rs.getInt("id");
				String picn=rs.getString("picn");
				String title=rs.getString("title");
				Double price=rs.getDouble("price");
				//形成book对象，添加到集合列表中
				Flower flower=new Flower();
				flower.setId(id);
				flower.setPicn(picn);
				flower.setTitle(title);
				flower.setPrice(price);
				flowerlist.add(flower);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(conn);
		}
		return flowerlist;
	}
	
	public Flower selectById(Integer id) {
		Flower flower = null;
		Connection conn=DBUtil.getConnection("flower_store_db","root", "123456");
		String sql="select * from db_flower where id=?";
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			//取结果集中的每条记录
			if(rs.next()){
				Integer id1=rs.getInt("id");
				String picn=rs.getString("picn");
				String title=rs.getString("title");
				Double price=rs.getDouble("price");
				String intro=rs.getString("intro");
				String symbol=rs.getString("symbol");
				//形成book对象，添加到集合列表中
			   flower= new Flower();
				flower.setId(id1);
				flower.setPicn(picn);
				flower.setTitle(title);
				flower.setPrice(price);
				flower.setIntro(intro);
				flower.setSymbol(symbol);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(conn);
		}
		return flower;
	}
}
