package data;
public class HOTELDAOImpl  
 {
	JDBCTemplate t = new JDBCTemplate();
	data.RequestHOTELMapper rm = new data.RequestHOTELMapper();
	business.HOTEL h = null;
	public HOTELDAOImpl(jakarta.servlet.http.HttpServletRequest request)
	{
		try {
			h = rm.mapRequest(request);
		}catch(Exception ex)
		{ System.out.println(ex); }
	}
	public HOTELDAOImpl()
	{
	
	}
public void insert() 
 {
	t.update(" insert into HOTEL(HOTELNAME,HOTELID,HOTELTYPE,ADDRESS,COST,IMGPATH) values(?,hotelseq.nextval,?,?,?,? )" , new Object[] {h.getHOTELNAME(),h.getHOTELTYPE(),h.getADDRESS(),h.getCOST(),h.getIMGPATH()});
 } 

public void edit() 
 {
	t.update(" update HOTEL set HOTELNAME = ? ,HOTELTYPE = ? ,ADDRESS = ? ,COST = ? , IMGPATH = ? where HOTELID = ?" , new Object[] {h.getHOTELNAME(),h.getHOTELTYPE(),h.getADDRESS(),h.getCOST(),h.getIMGPATH() ,h.getHOTELID()});
 } 
 public void remove(int   HOTELID) 
 {  
	 t.update("delete from HOTEL where  HOTELID = ? "  , new Object[] { HOTELID }  ); 
 } 
public java.util.List<business.HOTEL> listHOTEL() 
 { 
return t.query("select * from HOTEL" , new data.HOTELMapper()); 
 } 
 public business.HOTEL getHOTEL(int  HOTELID) 
 { 
 return (business.HOTEL)t.queryObject("select * from HOTEL where HOTELID =" + HOTELID , new data.HOTELMapper()); 
 } 
 }
