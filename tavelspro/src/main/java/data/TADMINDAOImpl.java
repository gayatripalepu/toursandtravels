package data;
public class TADMINDAOImpl  
 {
	JDBCTemplate t = new JDBCTemplate();
	business.TADMIN t1=null;
	data.RequestTADMINMapper rm = new data.RequestTADMINMapper();
	
	public TADMINDAOImpl(jakarta.servlet.http.HttpServletRequest request)
	{
		try {
		t1 = rm.mapRequest(request);
		}catch(Exception ex)
		{ System.out.println(ex); }
	}
	
	public TADMINDAOImpl()
	{
		
	}
public void insert() 
 {
	t.update(" insert into TADMIN(ADMINNAME,PASSWORD) values(?,? )" , new Object[] {t1.getADMINNAME(),t1.getPASSWORD()});
 } 
public void edit() 
 {
	 t.update(" update TADMIN set ADMINNAME = ? ,PASSWORD = ?" , new Object[] {t1.getADMINNAME(),t1.getPASSWORD()});
 } 
 public void remove(String  ADMINNAME) 
 {  t.update("delete from TADMIN where  ADMINNAME = ? "  , new Object[] { ADMINNAME }  ); 
 } 
public java.util.List<business.TADMIN> listTADMIN() 
 { 
return t.query("select * from TADMIN" , new data.TADMINMapper()); 
 } 
 public business.TADMIN getTADMIN(String  ADMINNAME) 
 { 
	 return (business.TADMIN)t.queryObject("select * from TADMIN where ADMINNAME = '" + ADMINNAME+"'" , new data.TADMINMapper()); 
 }
 public business.TADMIN loginCheck(String  ADMINNAME,String PASSWORD) 
 { 
	 return (business.TADMIN)t.queryObject("select * from TADMIN where ADMINNAME = '" + ADMINNAME+"' AND PASSWORD = '"+PASSWORD+"'" , new data.TADMINMapper()); 
 }
 }
