package data;
public class ORDERPACKAGESDAOImpl  
 {
	JDBCTemplate t = new JDBCTemplate();
	data.RequestORDERPACKAGESMapper rm = new data.RequestORDERPACKAGESMapper();
	business.ORDERPACKAGES o=null;
	int pid=0;
	public ORDERPACKAGESDAOImpl(jakarta.servlet.http.HttpServletRequest request)
	{
		try {
			
		o = rm.mapRequest(request);
		
		}catch(Exception ex)
		{ System.out.println(ex); }
	}
	
	public ORDERPACKAGESDAOImpl()
	{
		
	}
	
public void insert(int pid,String username,String jdate) 
 {
	t.update(" insert into ORDERPACKAGES(ORDERID,PACKAGEID,CUSTOMERNAME,REGISTEREDDATE,REGTIME,TRAVELDATE,STATUS) values(ORD_SEQ.NEXTVAL,?,?,SYSDATE,TO_CHAR(SYSDATE,'HH:Mi:SS'),?,'BOOKED' )" , new Object[] {pid,username,util.Util.getOracle(jdate, "yyyy-MM-dd")});
 } 
public void edit() 
 {
	 t.update(" update ORDERPACKAGES set PACKAGEID = ? ,CUSTOMERNAME = ? ,REGISTEREDDATE = ? ,REGTIME = ? ,TRAVELDATE = ? ,STATUS = ? where ORDERID = ?" , new Object[] {o.getPACKAGEID(),o.getCUSTOMERNAME(),o.getREGISTEREDDATE(),o.getREGTIME(),o.getTRAVELDATE(),o.getSTATUS(),o.getORDERID()});
 } 
 public void remove(int  ORDERID) 
 {  t.update("delete from ORDERPACKAGES where  ORDERID = ? "  , new Object[] { ORDERID }  ); 
 } 
public java.util.List<business.ORDERPACKAGES> listORDERPACKAGES() 
 { 
return t.query("select * from ORDERPACKAGES" , new data.ORDERPACKAGESMapper()); 
 } 

public java.util.List<business.ORDERPACKAGES> listORDERPACKAGES(String username) 
{ 
return t.query("select * from ORDERPACKAGES where customername = '"+ username +"'", new data.ORDERPACKAGESMapper()); 
} 
 public business.ORDERPACKAGES getORDERPACKAGES(int  ORDERID) 
 { 
 return (business.ORDERPACKAGES)t.queryObject("select * from ORDERPACKAGES where ORDERID = " + ORDERID , new data.ORDERPACKAGESMapper()); 
 } 
 
 public int cancelOrder(int orderid)
 {
	 int n=0;
	 n=t.update(" update ORDERPACKAGES set STATUS='CANCELED' WHERE ORDERID = ?", new Object[] {orderid });
	 return n;
 }
 }
