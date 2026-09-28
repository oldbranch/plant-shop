package xtu.edu.Entity;

import java.sql.Timestamp;

public class OrderVo {
	private Integer id;
	private Integer userId;
	private String orderNo;
	private Timestamp date;
	private String status;
	private Double total;
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
	public String getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Double getTotal() {
		return total;
	}
	public void setTotal(Double total) {
		this.total = total;
	}
	@Override
	public String toString() {
		return "OrderVo [id=" + id + ", userId=" + userId + ", orderNo=" + orderNo + ", date=" + date + ", status="
				+ status + ", total=" + total + "]";
	}
}
