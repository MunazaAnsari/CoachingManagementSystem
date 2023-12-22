package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.eventbean;
import bean.studentbean;


public class eventdao {
	
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
	
	
	
	public int Insertdata(eventbean sb) {
		Connection con =connect();
		int Status = 0;
		PreparedStatement st;
		try {
			st = con.prepareStatement("Insert into events (name , description  , date ) values ( ? , ? ,? );");
			st.setString(1,sb.getEname());
			st.setString(2,sb.getEdeescription());
			
			st.setString(3, sb.getEdate());
			Status = st.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return Status;

		
	}
	
	public int deleteevent(int id) {
		Connection con = connect();
		int status = 0 ;
		
		try {
			PreparedStatement st = con.prepareStatement("update events set status = 0 where eid = " +id);
						status=		st.executeUpdate()	;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
		
	}
	
	public int editevent(eventbean sb) {
		Connection con = connect();
		int status = 0 ;
		
		try {
			PreparedStatement st = con.prepareStatement("UPDATE events SET `name` = ?, `description` = ?, `date` = ? WHERE eid = ?");
			st.setString(1, sb.getEname()); 
			st.setString(2, sb.getEdeescription()); 
			st.setString(3, sb.getEdate()); 
			st.setInt(4, sb.getId());
			status = st.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
		
	}
	
	public static List <eventbean> showevent()
	{
	
			Connection con=connect();
			List<eventbean> list=new ArrayList<>();
			
			
		    try {
		    	Statement st =  con.createStatement();
				ResultSet r= st.executeQuery("select * from events where status=1  " );
				while(r.next())
				{
					eventbean ub=new eventbean();
					ub.setEname(r.getString("name"));
					ub.setEdeescription(r.getString("description"));
					ub.setEdate(r.getString("date"));
					ub.setId(r.getInt("eid"));
					list.add(ub);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return  list;
		}
	public static eventbean getevent (int id) {
		Connection con=connect();
		eventbean ub = new eventbean();
		try {
		
			
			PreparedStatement st = con.prepareStatement("SELECT * FROM events WHERE eid =? ");
			st.setInt(1,id);
			
			
			ResultSet rs = st.executeQuery();
			while (rs.next()) {
			ub.setEname(rs.getString(1));
			ub.setEdeescription(rs.getString(2));
			ub.setEdate(rs.getString(3));
			ub.setId(id);
//			ub.setId(r.getInt("eid"));
			}
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
			
		
		return ub;
	}
	

}
