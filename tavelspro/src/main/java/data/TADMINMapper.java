package data;
public class TADMINMapper implements RowMapper<business.TADMIN> 
{
	public business.TADMIN mapRow(java.sql.ResultSet rs,int rowcount) throws java.sql.SQLException 
	{
		business.TADMIN  obj = new business.TADMIN();
		obj.setADMINNAME(rs.getString("ADMINNAME")); 
		obj.setPASSWORD(rs.getString("PASSWORD")); 
		return obj;
	} 
 }

