package xtu.edu.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import xtu.edu.Entity.CollectionFlowerVo;
import xtu.edu.Util.DBUtil;

public class CollectFlowerVoDao {
	public ArrayList<CollectionFlowerVo> selectCollectPlantVoByUserId(Integer user_Id) {
		ArrayList<CollectionFlowerVo> collectionflowerList = new ArrayList<CollectionFlowerVo>();
		Connection conn=DBUtil.getConnection("flower_store_db","root", "123456");
		try {
			String sql="select c.id,b.picn,b.title,b.price from db_collection c,db_flower b where c.flower_id=b.id and c.user_id=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, user_Id);
			ResultSet rs=ps.executeQuery();
			//取结果集中的每条记录
			while(rs.next()){
				Integer id=rs.getInt("id");
				String picn=rs.getString("picn");
				String title=rs.getString("title");
				Double price=rs.getDouble("price");
//------------------------------------------------------------------------------------
				CollectionFlowerVo collectionflowervo =new CollectionFlowerVo();
				collectionflowervo.setId(id);
				collectionflowervo.setPicn(picn);
				collectionflowervo.setTitle(title);
				collectionflowervo.setPrice(price);
				collectionflowerList.add(collectionflowervo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(conn);
		}
		return collectionflowerList;
	}
}
