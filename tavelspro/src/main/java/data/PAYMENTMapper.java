package data;
public class PAYMENTMapper implements RowMapper<business.PAYMENT> 
 {
	public business.PAYMENT mapRow(java.sql.ResultSet rs,int rowcount) throws java.sql.SQLException 
	{
		business.PAYMENT  obj = new business.PAYMENT();
		obj.setPAYMENTMETHOD(rs.getString("PAYMENTMETHOD")); 
		obj.setAMOUNT(rs.getInt("AMOUNT")); 
		obj.setPAYMENTID(rs.getInt("PAYMENTID")); 
		obj.setPAYMENTDATE(rs.getString("PAYMENTDATE")); 
		obj.setSTATUS(rs.getString("STATUS")); 
		
		return obj;
} 
 }

