package data;
public class TCATEGORYDAOImpl  
 {
	JDBCTemplate t = new JDBCTemplate(); 
	business.TCATEGORY t1=null;
	data.RequestTCATEGORYMapper  rm = new data.RequestTCATEGORYMapper();
	
	public TCATEGORYDAOImpl(jakarta.servlet.http.HttpServletRequest request)
	{
		try {
			t1 = rm.mapRequest(request);
		}catch(Exception ex)
		{ System.out.println(ex); }
	}
	
	public TCATEGORYDAOImpl()
	{
	}
	
	public void insert() 
 {
	t.update(" insert into TCATEGORY(TCATID,TRANSPORTNAME) values(?,? )" , new Object[] {t1.getTCATID(),t1.getTRANSPORTNAME()});
 } 
 public void edit() 
 {
	 t.update(" update TCATEGORY set TCATID = ? ,TRANSPORTNAME = ?" , new Object[] {t1.getTCATID(),t1.getTRANSPORTNAME()});
 } 
 public void remove(int  TCATID) 
 {  
	 t.update("delete from TCATEGORY where  TCATID = ? "  , new Object[] { TCATID }  ); 
 } 
public java.util.List<business.TCATEGORY> listTCATEGORY() 
 { 
return t.query("select * from TCATEGORY" , new data.TCATEGORYMapper()); 
 } 
 public business.TCATEGORY getTCATEGORY(int  TCATID) 
 { 
 return (business.TCATEGORY)t.queryObject("select * from TCATEGORY where TCATID = " + TCATID , new data.TCATEGORYMapper()); 
 } 
 }
