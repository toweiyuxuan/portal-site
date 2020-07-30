package cn.wyx.configclass;

public class About 
{
	private String email;
	private String phone;
	private String introduce;
	private String address;
	private String qrcode;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getQrcode() {
		return qrcode;
	}
	public void setQrcode(String qrcode) {
		this.qrcode = qrcode;
	}
	@Override
	public String toString() {
		return "About [email=" + email + ", phone=" + phone + ", introduce="
				+ introduce + ", address=" + address + ", qrcode=" + qrcode
				+ "]";
	}
}
