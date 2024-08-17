package data;
public class TUSERDAOImpl  
 {
	JDBCTemplate t1 = new JDBCTemplate(); 
	RequestTUSERMapper rm = new RequestTUSERMapper();
	business.TUSER tuser=null;
	public TUSERDAOImpl(jakarta.servlet.http.HttpServletRequest request)
	{
		try {
		tuser = rm.mapRequest(request);
		}catch(Exception ex)
		{ System.out.println(ex); }
	}
	
	public TUSERDAOImpl()
	{}
public void insert() 
 {
	System.out.println(tuser.getUSERNAME());
	t1.update(" insert into TUSER(USERNAME,PHONENUMBER,AGE,GENDER,AADHAAR,PASSWORD,SECQ,ANS) values(?,?,?,?,?,?,?,?)" , new Object[] {tuser.getUSERNAME(),tuser.getPHONENUMBER(),tuser.getAGE(),tuser.getGENDER(),tuser.getAADHAAR(),tuser.getPASSWORD(),tuser.getSECQ(),tuser.getANS()});
	
 } 
public void edit() 
 {
	 t1.update(" update TUSER set PHONENUMBER = ? ,AGE = ? ,GENDER = ? ,AADHAAR = ? ,PASSWORD = ? ,SECQ =? ,ANS =? where USERNAME =?" , new Object[] {tuser.getPHONENUMBER(),tuser.getAGE(),tuser.getGENDER(),tuser.getAADHAAR(),tuser.getPASSWORD(),tuser.getSECQ(),tuser.getANS(),tuser.getUSERNAME()});
 } 
 public void remove(String  USERNAME) 
 {  
	 t1.update("delete from TUSER where  USERNAME = ? "  , new Object[] {USERNAME}  ); 
 } 
public java.util.List<business.TUSER> listTUSER() 
 { 
	return t1.query("select * from TUSER" , new data.TUSERMapper()); 
 } 
 public business.TUSER getTUSER(String  USERNAME) 
 { 
 return (business.TUSER)t1.queryObject("select * from TUSER where USERNAME = '" + USERNAME+"'" , new data.TUSERMapper()); 
 }
 
 public business.TUSER loginCheck(String  USERNAME,String PASSWORD) 
 { 
	 return (business.TUSER)t1.queryObject("select * from TUSER where USERNAME like '" + USERNAME+"' AND PASSWORD like '"+PASSWORD+"'" , new data.TUSERMapper()); 
 }
 public void changePassword(String username,String pass)
 {
	 t1.update(" update TUSER set PASSWORD = ? WHERE USERNAME =?", new Object[] {pass,username});
 }
 
 }
