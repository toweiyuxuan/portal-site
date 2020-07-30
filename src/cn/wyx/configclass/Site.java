package cn.wyx.configclass;

public class Site 
{
	private String copyright;
	private String email;
	private String tel;
	private String qrcode;
	private String casenumber;
	private String sitePath;
	
	public String getCopyright() {
		return copyright;
	}
	public void setCopyright(String copyright) {
		this.copyright = copyright;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getQrcode() {
		return qrcode;
	}
	public void setQrcode(String qrcode) {
		this.qrcode = qrcode;
	}
	public String getCasenumber() {
		return casenumber;
	}
	public void setCasenumber(String casenumber) {
		this.casenumber = casenumber;
	}
	public String getSitePath() {
		return sitePath;
	}
	public void setSitePath(String sitePath) {
		this.sitePath = sitePath;
	}
	@Override
	public String toString() {
		return "Site [copyright=" + copyright + ", email=" + email + ", tel="
				+ tel + ", qrcode=" + qrcode + ", casenumber=" + casenumber
				+ ", sitePath=" + sitePath + "]";
	}
}
