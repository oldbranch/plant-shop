package xtu.edu.Entity;

public class Collection {
	private Integer id;
	private Integer userId;
	private Integer flowerId;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getFlowerId() {
		return flowerId;
	}
	public void setFlowerId(Integer flowerId) {
		this.flowerId = flowerId;
	}
	@Override
	public String toString() {
		return "Collection [id=" + id + ", userId=" + userId + ", flowerId=" + flowerId + "]";
	}
}
