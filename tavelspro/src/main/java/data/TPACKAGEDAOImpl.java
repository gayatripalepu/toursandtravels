package data;
public class TPACKAGEDAOImpl  
 {
	JDBCTemplate t = new JDBCTemplate();
	business.TPACKAGE  t1=null;
	data.RequestTPACKAGEMapper rm = new data.RequestTPACKAGEMapper();
	public TPACKAGEDAOImpl(jakarta.servlet.http.HttpServletRequest request)
	{
		try {
			t1 = rm.mapRequest(request);
		}catch(Exception ex)
		{ System.out.println(ex); }
	}
	public TPACKAGEDAOImpl()
	{}
	
  public void insert() 
 {
	t.update(" insert into TPACKAGE(PID,PACKAGENAME,NO_OF_DAYS,TRANSPORT,HOTELID,COST,IMGPATH) values(packseq.nextval,?,?,?,?,?,? )" , new Object[] {t1.getPACKAGENAME(),t1.getNO_OF_DAYS(),t1.getTRANSPORT(),t1.getHOTELID(),t1.getCOST(),t1.getIMGPATH()});
 } 
  public void edit() 
 {
	 t.update(" update TPACKAGE set PACKAGENAME = ? ,NO_OF_DAYS = ? ,TRANSPORT = ? ,HOTELID = ? ,COST = ? , IMGPATH = ? where  PID = ?" , new Object[] {t1.getPACKAGENAME(),t1.getNO_OF_DAYS(),t1.getTRANSPORT(),t1.getHOTELID(),t1.getCOST(),t1.getIMGPATH(),t1.getPID()});
 } 
 public void remove(int  PID) 
 {  t.update("delete from TPACKAGE where  PID = ? "  , new Object[] { PID }  ); 
 } 
public java.util.List<business.TPACKAGE> listTPACKAGE() 
 { 
return t.query("select * from TPACKAGE" , new data.TPACKAGEMapper()); 
 } 
 public business.TPACKAGE getTPACKAGE(int  PID) 
 { 
	 return (business.TPACKAGE)t.queryObject("select * from TPACKAGE where PID = " + PID , new data.TPACKAGEMapper()); 
 } 
 
 public java.util.List<business.TPACKAGE> getTPACKAGEByCost(int  cost) 
 { 
	 return t.query("select * from TPACKAGE where cost  <= " + cost , new data.TPACKAGEMapper()); 
 } 
 }
