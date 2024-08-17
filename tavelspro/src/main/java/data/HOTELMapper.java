package data;
public class HOTELMapper implements RowMapper<business.HOTEL> 
{

public business.HOTEL mapRow(java.sql.ResultSet rs,int rowcount) throws java.sql.SQLException 
{
		business.HOTEL  obj = new business.HOTEL();
		obj.setHOTELNAME(rs.getString("HOTELNAME")); 
		obj.setHOTELID(rs.getInt("HOTELID")); 
		obj.setHOTELTYPE(rs.getString("HOTELTYPE")); 
		obj.setADDRESS(rs.getString("ADDRESS")); 
		obj.setCOST(rs.getInt("COST"));
		obj.setIMGPATH(rs.getString("IMGPATH"));
		return obj;
} 
 
}

