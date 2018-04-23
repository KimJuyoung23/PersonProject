package beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class PersonDAO {

	public Connection getConnection() throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "kim", "0000");

		return con;
	}

	public int insertNewData(PersonDTO p) throws Exception{
			Connection con = this.getConnection();
			String sql = "insert into person values(parson_seq.nextval,?,?,?)";
			PreparedStatement pstat = con.prepareStatement(sql);
			
			pstat.setString(1, p.getName());
			pstat.setString(2, p.getBirth());
			pstat.setString(3, p.getEmail());
			int result = pstat.executeUpdate();
			con.commit();
			con.close();
			return result;
		}

	public void outPut() throws Exception{
			Connection con = this.getConnection();
			String sql = "select * from person";
			PreparedStatement state = con.prepareStatement(sql);
			ResultSet rs = state.executeQuery(sql);

			while (rs.next()) {
				System.out.println("<tr>");
				System.out.println("<td>" + rs.getInt("id"));
				System.out.println("<td>" + rs.getString("name"));
				System.out.println("<td>" + rs.getString("birth"));
				System.out.println("<td>" + rs.getString("email"));
				System.out.println("</tr>");	
			}
			con.close();
		}
		
		public int deleteData(int id) throws Exception{
			Connection con = this.getConnection();
			//int id = Integer.parseInt(request.getParameter("delid"));
			String sql = "delete from person where id=?";
			PreparedStatement pstat = con.prepareStatement(sql);
			pstat.setInt(1, id);
			int result = pstat.executeUpdate();
			
			return result;
		}
		
		public void upDataProc(int id) throws Exception{
			Connection con = this.getConnection();
			
			String sql = "update from person where id=?";
			PreparedStatement pstat = con.prepareStatement(sql);
			pstat.setInt(1, id);
			ResultSet rs = pstat.executeQuery();
			
			String name = null;
			String birth = null;
			String email = null;
			if(rs.next()){
			
			name = rs.getString("name");
			birth = rs.getString("birth");
			email = rs.getString("email");
			
			}
			con.close();
			
			
		}
		
		
		public int upDataProc2(PersonDTO p) throws Exception{
			Connection con = this.getConnection();
			
			String sql = "update person set name=?, birth=?, email=? where id=?";		
			PreparedStatement pstat = con.prepareStatement(sql);
			
			pstat.setString(1, p.getName());
			pstat.setString(2, p.getBirth());
			pstat.setString(3, p.getEmail());
			pstat.setInt(4, p.getId());
			int result = pstat.executeUpdate();
			
			return result;
		}
}
