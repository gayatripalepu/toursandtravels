package data;
public class FEEDBACKTBDAOImpl  
 {
	JDBCTemplate t = new JDBCTemplate(); 
	data.RequestFEEDBACKTBMapper rm = new data.RequestFEEDBACKTBMapper();
	business.FEEDBACKTB f=null;
	public FEEDBACKTBDAOImpl(jakarta.servlet.http.HttpServletRequest request)
	{
		try {
			
		f = rm.mapRequest(request);
		
		}catch(Exception ex)
		{ System.out.println(ex); }
	}
	
	public FEEDBACKTBDAOImpl()
	{
		
	}
	
public void insert() 
 {
	t.update(" insert into FEEDBACKTB(FEEDID,USERNAME,FEEDDATE,PID,COMMENTS) values(feedseq.nextval,?,sysdate,?,? )" , new Object[] {f.getUSERNAME(),f.getPID(),f.getCOMMENTS()});
 } 
public void edit() 
 {
	t.update(" update FEEDBACKTB set  USERNAME = ? ,FEEDDATE = ? ,PID=?, COMMENTS = ? where FEEDID = ?" , new Object[] {f.getUSERNAME(),f.getFEEDDATE(),f.getPID(),f.getCOMMENTS(),f.getFEEDID()});
 } 
 public void remove(String  USERNAME) 
 {  
	 t.update("delete from FEEDBACKTB where  USERNAME = ? "  , new Object[] { USERNAME }  ); 
 } 
public java.util.List<business.FEEDBACKTB> listFEEDBACKTB() 
 { 
return t.query("select * from FEEDBACKTB" , new data.FEEDBACKTBMapper()); 
 }
public java.util.List<business.FEEDBACKTB> listFEEDBACKTBByPID(int PID) 
{ 
	return t.query("select * from FEEDBACKTB where PID = "+PID , new data.FEEDBACKTBMapper()); 
} 

 public business.FEEDBACKTB getFEEDBACKTB(String  USERNAME) 
 { 
 return (business.FEEDBACKTB)t.queryObject("select * from FEEDBACKTB where USERNAME = " + USERNAME , new data.FEEDBACKTBMapper()); 
 } 
 }
