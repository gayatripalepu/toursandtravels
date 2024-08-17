package data;
public class TCATEGORYMapper implements RowMapper<business.TCATEGORY> 
{
	public business.TCATEGORY mapRow(java.sql.ResultSet rs,int rowcount) throws java.sql.SQLException 
	{
		business.TCATEGORY  obj = new business.TCATEGORY();
		obj.setTCATID(rs.getInt("TCATID")); 
		obj.setTRANSPORTNAME(rs.getString("TRANSPORTNAME")); 
		return obj;
	} 
 }

