package cart.bean;

public class baseballBean {
	private String pname;
	private int price;
	private String category;
	private String pcompany;
	private String porigin;
	private String picture;
	
	
	public baseballBean(String pname, int price, String category, String pcompany, String porigin, String picture) {
		super();
		this.pname = pname;
		this.price = price;
		this.category = category;
		this.pcompany = pcompany;
		this.porigin = porigin;
		this.picture = picture;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public baseballBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public baseballBean(String pname, int price, String category, String pcompany, String porigin) {
		super();
		this.pname = pname;
		this.price = price;
		this.category = category;
		this.pcompany = pcompany;
		this.porigin = porigin;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getPcompany() {
		return pcompany;
	}
	public void setPcompany(String pcompany) {
		this.pcompany = pcompany;
	}
	public String getPorigin() {
		return porigin;
	}
	public void setPorigin(String porigin) {
		this.porigin = porigin;
	}
	@Override
	public String toString() {
		return "baseballBean [pname=" + pname + ", price=" + price + ", category=" + category + ", pcompany=" + pcompany
				+ ", porigin=" + porigin + ", picture=" + picture + "]";
	}
	
	
}
