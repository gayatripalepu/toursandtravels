/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;



import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
public class JDBCTemplate
{

PreparedStatement pst;
Statement st;
ResultSet rs;
DataSource ds;
Connection conn;
public JDBCTemplate()
{
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","travel","vaag2023");
}catch(Exception ex)
{ System.out.println(ex); }
}
public JDBCTemplate(javax.sql.DataSource ds)
{
 this.ds = ds;
}

public void setDataSource(javax.sql.DataSource ds)
{
this.ds = ds;
}
public java.sql.Connection getConnection()
{
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","travel","vaag2023");
		return conn;
	}catch(Exception ex)
	{ System.out.println(ex); }
	return null;
}
public javax.sql.DataSource getDataSource()
{
	return ds;
}
public <T> java.lang.Object queryObject(String query,RowMapper<T> rowmapper)
{
	try{
		conn = getConnection();
		st = conn.createStatement();
		rs = st.executeQuery(query);
		if(rs.next())
			return	rowmapper.mapRow(rs,1);
		


}catch(Exception ex)
{  System.out.println(ex); }
finally
{
	try{
		if(rs != null)
		   rs.close();
		if(st != null)
			st.close();
		if(conn != null)
			conn.close();
	}catch(Exception ex)
	{
		System.out.println(ex);
	}
}
return null;	

	
}
public <T> java.util.List<T>  query(String query,RowMapper<T> rowmapper)
{
java.util.List<T>   list= new java.util.ArrayList<T>();
try{
		conn = getConnection();
		st = conn.createStatement();
		rs = st.executeQuery(query);
		while(rs.next())
		{

			list.add(rowmapper.mapRow(rs,1));
		}
return list;		

}catch(Exception ex)
{  System.out.println(ex); }
finally
{
	try{
		if(rs != null)
		   rs.close();
		if(st != null)
			st.close();
		if(conn != null)
			conn.close();
}catch(Exception ex)
{
  System.out.println(ex);
}
}
return null;	

}
public int update(String query,Object  []params)
{
	try{
		conn = getConnection();
		pst = conn.prepareStatement(query);
		for(int i=0;i<params.length;i++)
		{
			pst.setString(i+1,params[i].toString());
		}
		pst.executeUpdate();
		return 1;
	}catch(Exception ex)
	{ System.out.println("Error : " +ex); }
	finally
	{
		try{
			
			if(pst != null)
				pst.close();
			if( conn != null)
				conn.close();
			
	
	
		}catch(Exception ex)
		{ System.out.println(ex); }
	}
return 0;
}

public int updateProcedure(String query,Object  []params)
{
	try{
		conn = getConnection();
		pst = conn.prepareStatement(query);
		for(int i=0;i<params.length;i++)
		pst.setString(i+1,params[i].toString());
		pst.executeUpdate();
		return 1;
	}catch(Exception ex)
	{ System.out.println(ex); }
	finally
	{
		try{
			
			if(pst != null)
				pst.close();
			if( conn != null)
				conn.close();
			
	
	
		}catch(Exception ex)
		{ System.out.println(ex); }
	}
return 0;
}

}