package xtu.edu.Entity;

public class Flower {
	private Integer id;
	private String picn;
	private String title;
	private Double price;
	private String intro;
	private String symbol;
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
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getSymbol() {
		return symbol;
	}
	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}
	@Override
	public String toString() {
		return "Flower [id=" + id + ", picn=" + picn + ", title=" + title + ", price=" + price + ", intro=" + intro
				+ ", symbol=" + symbol + "]";
	}
}
