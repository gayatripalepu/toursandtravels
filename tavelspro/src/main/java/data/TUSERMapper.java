package data;
public class TUSERMapper implements RowMapper<business.TUSER> 
 {
public business.TUSER mapRow(java.sql.ResultSet rs,int rowcount) throws java.sql.SQLException 
{
	business.TUSER  obj = new business.TUSER();
	obj.setUSERNAME(rs.getString("USERNAME")); 
	obj.setPHONENUMBER(rs.getString("PHONENUMBER")); 
	obj.setAGE(rs.getInt("AGE")); 
	obj.setGENDER(rs.getString("GENDER")); 
	obj.setAADHAAR(rs.getString("AADHAAR")); 
	obj.setPASSWORD(rs.getString("PASSWORD")); 
	obj.setSECQ(rs.getString("SECQ")); 
	obj.setANS(rs.getString("ANS")); 
return obj;
} 
 }

