package data;
public class ORDERPACKAGESMapper implements RowMapper<business.ORDERPACKAGES> 
{
	
public business.ORDERPACKAGES mapRow(java.sql.ResultSet rs,int rowcount) throws java.sql.SQLException 
{
	business.ORDERPACKAGES  obj = new business.ORDERPACKAGES();
	obj.setORDERID(rs.getInt("ORDERID")); 
	obj.setPACKAGEID(rs.getInt("PACKAGEID")); 
	obj.setCUSTOMERNAME(rs.getString("CUSTOMERNAME")); 
	obj.setREGISTEREDDATE(rs.getString("REGISTEREDDATE")); 
	obj.setREGTIME(rs.getString("REGTIME")); 
	obj.setTRAVELDATE(rs.getString("TRAVELDATE")); 
	obj.setSTATUS(rs.getString("STATUS")); 

return obj;
} 
 }

