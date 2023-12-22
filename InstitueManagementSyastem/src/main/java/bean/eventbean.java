package bean;

public class eventbean {
	
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getEdeescription() {
		return edeescription;
	}
	public void setEdeescription(String edeescription) {
		this.edeescription = edeescription;
	}
	public String getEdate() {
		return edate;
	}
	public void setEdate(String edate) {
		this.edate = edate;
	}
	public int getStatust() {
		return statust;
	}
	public void setStatust(int statust) {
		this.statust = statust;
	}
	String ename , edeescription , edate;
	int statust , id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

}
