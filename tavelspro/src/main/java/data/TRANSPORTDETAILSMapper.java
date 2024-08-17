package data;
public class TRANSPORTDETAILSMapper implements RowMapper<business.TRANSPORTDETAILS> 
 {
	public business.TRANSPORTDETAILS mapRow(java.sql.ResultSet rs,int rowcount) throws java.sql.SQLException 
	{
		business.TRANSPORTDETAILS  obj = new business.TRANSPORTDETAILS();
		obj.setTID(rs.getInt("TID")); 
		obj.setTRANSPORTNAME(rs.getString("TRANSPORTNAME")); 
		obj.setTCATEGORYID(rs.getInt("TCATEGORYID")); 
		obj.setCOST(rs.getInt("COST")); 
		obj.setIMGPATH(rs.getString("IMGPATH"));
		return obj;
	} 
 }

