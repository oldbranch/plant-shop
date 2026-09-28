package xtu.edu.Entity;

public class CartFlowerVo {
	private Integer id;
	private String picn;
	private String title;
	private Double price;
	private Integer num;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getPicn() {
		return picn;
	}
	public void setPicn(String picn) {
		this.picn = picn;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	@Override
	public String toString() {
		return "CartFlowerVo [id=" + id + ", picn=" + picn + ", title=" + title + ", price=" + price + ", num=" + num
				+ "]";
	}
}
