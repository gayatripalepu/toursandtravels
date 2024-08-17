package data;public class TPACKAGEMapper implements RowMapper<business.TPACKAGE> 
 {public business.TPACKAGE mapRow(java.sql.ResultSet rs,int rowcount) throws java.sql.SQLException 
{business.TPACKAGE  obj = new business.TPACKAGE();
obj.setPID(rs.getInt("PID")); 
obj.setPACKAGENAME(rs.getString("PACKAGENAME")); 
obj.setNO_OF_DAYS(rs.getInt("NO_OF_DAYS")); 
obj.setTRANSPORT(rs.getInt("TRANSPORT")); 
obj.setHOTELID(rs.getInt("HOTELID")); 
obj.setCOST(rs.getInt("COST"));
obj.setIMGPATH(rs.getString("IMGPATH"));
return obj;
} 
 }

