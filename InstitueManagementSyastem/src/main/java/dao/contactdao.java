package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.contactbean;


public class contactdao {


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
	
	
	public int Insertdata(contactbean sb) {
		Connection con =connect();
		int Status = 0;
		PreparedStatement st;
		try {
			st = con.prepareStatement("INSERT INTO `enquiery`(`name`, `subject`, `email`, `contact`, `descrption`) VALUES ( ? , ? ,?,?,? );");
			st.setString(1,sb.getName());
			st.setString(2,sb.getSubject());
			st.setString(3,sb.getEmail());
			st.setLong(4, sb.getContact());
			st.setString(5,sb.getDescripton());
			Status = st.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return Status;

		
	}
	
	
	public static List <contactbean> Showenquiery()
	{
	
			Connection con=connect();
			List<contactbean> list=new ArrayList<>();
			
			
		    try {
		    	Statement st =  con.createStatement();
				ResultSet r= st.executeQuery("select * from enquiery where status=1 " );
				while(r.next())
				{
					contactbean ub=new contactbean();
					
					ub.setName(r.getString("name"));
					ub.setEmail(r.getString("email"));
					ub.setContact(r.getLong("contact"));
					ub.setId(r.getInt("id"));
					ub.setDescripton(r.getString("descrption"));
					ub.setSubject(r.getString("subject"));
				
					list.add(ub);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return  list;
		}
	
	
	public int viewd(int id) {
		Connection con = connect();
		int status = 0 ;
		
		try {
			PreparedStatement st = con.prepareStatement("update enquiery set status=0 where id = " +id);
						status=		st.executeUpdate()	;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
		
	}
	
	
	
	
}
