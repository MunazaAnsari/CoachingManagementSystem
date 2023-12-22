package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import bean.adminbean;
import bean.studentbean;

public class studentdao {
	
	public static Connection connect () {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/instituemanagement" , "root", "");
//			System.out.println(con);			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return con ;
	}
	
	
	public int Insertdata(studentbean sb) {
		Connection con =connect();
		int Status = 0;
		PreparedStatement st;
		try {
			st = con.prepareStatement("Insert into student (sname , semail ,scontact , spass , scourse , sftotal ,sfpending) values (?, ? , ? , ? ,? ,? , ?);");
			st.setString(1,sb.getSname());
			st.setString(2,sb.getSemial());
			st.setLong(3, sb.getScontact());
			st.setString(4, sb.getSpass());
			st.setString(5, sb.getScourse());
			if (sb.getScourse().equals("MERN Stack")) {
				sb.setSftotal(45000);
			}
			else if (sb.getScourse().equals("FullStack Java")) {
				sb.setSftotal(40000);
			}
			else if (sb.getScourse().equals("FullStack DotNet")) {
				sb.setSftotal(35000);
			}
			st.setInt(6, sb.getSftotal());
			st.setInt(7, sb.getSftotal());
			Status = st.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return Status;

		
	}
	
	
	public int updatestudent(studentbean list1) {
		Connection con = connect();
		int status = 0 ;
		int id = list1.getSid();
		try {
			PreparedStatement st = con.prepareStatement("update student set sname =?, semail=?, sdob =?,saddress =?, spin=?,  scourse =?, scontact =?, sfpaid =?, sfpending =?, sftotal =? where sid = ?" );
				st.setString(1,list1.getSname() );
				st.setString(2,list1.getSemial() );
				st.setString(3,list1.getSdob() );
				st.setString(4,list1.getSaddress() );
				st.setInt(5,list1.getSpin() );
				st.setString(6,list1.getScourse() );
				st.setLong(7,list1.getScontact() );
				st.setInt(8,list1.getSfpaid() );
				if (list1.getScourse().equals("MERN Stack")) {
					list1.setSftotal(45000);
				}
				else if (list1.getScourse().equals("FullStack Java")) {
					list1.setSftotal(40000);
				}
				else if (list1.getScourse().equals("FullStack DotNet")) {
					list1.setSftotal(35000);
				}
				st.setInt(10,list1.getSftotal() );
				
				
				st.setInt(9,list1.getSftotal()-list1.getSfpaid() );
				
				st.setInt(11 ,id);
			
			status=		st.executeUpdate()	;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
		
	}
	
	public static boolean vlaidateadmin(studentbean ab) {
		Connection con = connect();
		boolean status = false ;
		
		try {
			PreparedStatement st = con.prepareStatement("SELECT * FROM student WHERE semail =? and sdelete=1 and spass= ? and sapprove=1 ");
			st.setString(1, ab.getSname());
			st.setString(2, ab.getSpass());
			
			ResultSet rs = st.executeQuery();
			status=rs.next();			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
		
	}


public  static studentbean getperson (String email ) {
	studentbean ub = new studentbean();
	Connection con =connect ();
	
	try {
		
		
		
		PreparedStatement st = con.prepareStatement("SELECT * FROM student WHERE semail =? ");
		st.setString(1,email);
		
		
		ResultSet r = st.executeQuery();
		
		
		while (r.next()) {
			
			ub.setSid(r.getInt("Sid"));
			ub.setScourse(r.getString("Scourse"));
			ub.setSname(r.getString("sname"));
			ub.setSemial(email);
			ub.setScontact(r.getLong("scontact"));
			ub.setSaddress(r.getString("saddress"));
			ub.setSdob(r.getString("sdob"));
			ub.setSfpaid(r.getInt("sfpaid"));
			ub.setSfpending(r.getInt("sfpending"));
			ub.setSftotal(r.getInt("sftotal"));
			ub.setSgender(r.getInt("gender"));
			ub.setSpin(r.getInt("spin"));
			
//			System.out.println(p.getDob());
		}
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	return ub ;
	
}



public int adddetails(studentbean list1) {
	Connection con = connect();
	int status = 0 ;
	int id = list1.getSid();
	try {
		PreparedStatement st = con.prepareStatement("update student set sname =?, semail=?, sdob =?,saddress =?, spin=?,  scourse =?, scontact =? , sfpending =?, sftotal =? where sid = ?" );
			st.setString(1,list1.getSname() );
			st.setString(2,list1.getSemial() );
			st.setString(3,list1.getSdob() );
			st.setString(4,list1.getSaddress() );
			st.setInt(5,list1.getSpin() );
			st.setString(6,list1.getScourse() );
			st.setLong(7,list1.getScontact() );
			if (list1.getScourse().equals("MERN Stack")) {
				list1.setSftotal(45000);
			}
			else if (list1.getScourse().equals("FullStack Java")) {
				list1.setSftotal(40000);
			}
			else if (list1.getScourse().equals("FullStack DotNet")) {
				list1.setSftotal(35000);
			}

			
	
			st.setInt(8,list1.getSftotal()-list1.getSfpaid() );
			st.setInt(9, list1.getSftotal());
			st.setInt(10 ,id);
		
		status=		st.executeUpdate()	;
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return status;
	
}


}
