package data;public class FEEDBACKTBMapper implements RowMapper<business.FEEDBACKTB> 
 {
	public business.FEEDBACKTB mapRow(java.sql.ResultSet rs,int rowcount) throws java.sql.SQLException 
	{
		
		business.FEEDBACKTB  obj = new business.FEEDBACKTB();
		obj.setFEEDID(rs.getInt("FEEDID"));
		obj.setUSERNAME(rs.getString("USERNAME")); 
		obj.setFEEDDATE(rs.getString("FEEDDATE")); 
		obj.setPID(rs.getInt("PID"));
		obj.setCOMMENTS(rs.getString("COMMENTS")); 
	
		return obj;
	} 
 }

