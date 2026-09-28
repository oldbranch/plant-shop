package xtu.edu.Entity;

public class CollectionFlowerVo {
	private Integer id;
	private String picn;
	private String title;
	private Double price;
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
	@Override
	public String toString() {
		return "CollectionFlowerVo [id=" + id + ", picn=" + picn + ", title=" + title + ", price=" + price + "]";
	}
}
