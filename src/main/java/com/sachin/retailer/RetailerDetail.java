package com.sachin.retailer;

public class RetailerDetail {
	 String name;
	 String address;
	 String primary;
	 String secondary;
	RetailerDetail(String name,String address, String primary, String secondary)
	{
		this.name=name;
		this.address=address;
		this.primary=primary;
		this.secondary=secondary;
//		System.out.println(this.name+" "+this.address+" "+this.primary+" "+this.secondary);
	}
	public RetailerDetail()
	{
		
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPrimary() {
		return primary;
	}
	public void setPrimary(String primary) {
		this.primary = primary;
	}
	public String getSecondary() {
		return secondary;
	}
	public void setSecondary(String secondary) {
		this.secondary = secondary;
	}
	
}
