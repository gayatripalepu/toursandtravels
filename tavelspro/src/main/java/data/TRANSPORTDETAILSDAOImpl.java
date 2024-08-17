package data;
public class TRANSPORTDETAILSDAOImpl  
 {
	JDBCTemplate t = new JDBCTemplate();
	business.TRANSPORTDETAILS t1 =null;
	data.RequestTRANSPORTDETAILSMapper rm = new data.RequestTRANSPORTDETAILSMapper();
	public TRANSPORTDETAILSDAOImpl(jakarta.servlet.http.HttpServletRequest request)
	{
		try {
			t1 = rm.mapRequest(request);
		}catch(Exception ex)
		{ System.out.println(ex); }
	}
	public TRANSPORTDETAILSDAOImpl()
	{
		
	}
public void insert() 
 {t.update(" insert into TRANSPORTDETAILS(TID,TRANSPORTNAME,TCATEGORYID,COST,IMGPATH) values(?,?,?,?,? )" , new Object[] {t1.getTID(),t1.getTRANSPORTNAME(),t1.getTCATEGORYID(),t1.getCOST(),t1.getIMGPATH()});
 } 
public void edit() 
 {t.update(" update TRANSPORTDETAILS set TRANSPORTNAME = ? ,TCATEGORYID = ? ,COST = ?, IMGPATH =? where TID = ?" , new Object[] {t1.getTRANSPORTNAME(),t1.getTCATEGORYID(),t1.getCOST(),t1.getIMGPATH(),t1.getTID()});
 } 
 public void remove(int TID) 
 {  t.update("delete from TRANSPORTDETAILS where  TID = ? "  , new Object[] { TID }  ); 
 } 
public java.util.List<business.TRANSPORTDETAILS> listTRANSPORTDETAILS() 
 { 
return t.query("select * from TRANSPORTDETAILS" , new data.TRANSPORTDETAILSMapper()); 
 } 
 public business.TRANSPORTDETAILS getTRANSPORTDETAILS(int  TID) 
 { 
	 return (business.TRANSPORTDETAILS)t.queryObject("select * from TRANSPORTDETAILS where TID = " + TID , new data.TRANSPORTDETAILSMapper()); 
 } 
 }
