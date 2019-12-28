package MedicaDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.app.*;
import MedicaDao.*;

public class DrugDao {
	public static Connection getConnection() throws SQLException {
		Connection con=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.print("driver Found ");
			con=DriverManager.getConnection("jdbc:mysql://192.168.100.26:3306/group008","group008","welcome");
			System.out.println("connection established");
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
		return con;
	}
	
	
	public static DrugClass getMedicineById(int id)
	{
		DrugClass obj=new DrugClass();
		try {
			Connection con=DrugDao.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from drug where id=?");
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				obj.setId(rs.getInt("id"));
				obj.setName(rs.getString("name"));
				obj.setD(rs.getDate("expiryDate"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return obj ;
		
	}
	
	public static int GetdeleteById(int id)
	{
		int status=0;
		try 
		{
			Connection con=DrugDao.getConnection();
			PreparedStatement ps=con.prepareStatement("delete from drug where id=?");
			ps.setInt(1, id);
			status=ps.executeUpdate();
		} 
		catch (SQLException e)
		{
			
			e.printStackTrace();
		}
		return status;
	}
}


