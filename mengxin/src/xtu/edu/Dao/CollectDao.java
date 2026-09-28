package xtu.edu.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import xtu.edu.Entity.Collection;
import xtu.edu.Util.DBUtil;

/**
 * 这是collection的DAO
 * @author old branch
 *
 */
public class CollectDao {
	
	public Collection selectPlantByUserId(Integer user_id,Integer flower_id) {
		Collection collection = null;
		//建立连接
		Connection conn=DBUtil.getConnection("flower_store_db","root", "123456");
		String sql = "select * from db_collection where user_id=? and flower_id=?";
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, user_id);
			ps.setInt(2, flower_id);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				int id=rs.getInt("id");
				collection=new Collection();
				collection.setId(id);
				collection.setUserId(user_id);
				collection.setFlowerId(flower_id);
			}
			DBUtil.close(conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(conn);
		}
		return collection;
	}
	
	public Collection selectCollectById(Integer id) {
		Collection collection = new Collection();
		Connection conn=DBUtil.getConnection("flower_store_db","root", "123456");
		String sql = "select * from db_collection where id=?";
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(conn);
		}
		return collection;
	}
	public Integer insert(Collection collect) {
		Integer n = null;
		Connection conn=DBUtil.getConnection("flower_store_db","root", "123456");
		String sql = "insert into db_collection(user_id,flower_id) values(?,?)";
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, collect.getUserId());
			ps.setInt(2, collect.getFlowerId());
			n=ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(conn);
		}
		return n;
	}
	public Integer delete(Integer id) {
		Integer n = null;
		Connection conn=DBUtil.getConnection("flower_store_db","root", "123456");
		String sql = "delete from db_collection where id=?";
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			n=ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(conn);
		}
		return n;
	}
	
}
