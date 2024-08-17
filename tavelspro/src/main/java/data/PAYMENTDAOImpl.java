package data;
public class PAYMENTDAOImpl  
 {
	JDBCTemplate t = new JDBCTemplate();
	data.RequestPAYMENTMapper rm = new data.RequestPAYMENTMapper();
	business.PAYMENT p = null; 
	int ordid=0;
	public PAYMENTDAOImpl(jakarta.servlet.http.HttpServletRequest request)
	{
		try {
			p = rm.mapRequest(request);
			ordid = Integer.parseInt(request.getParameter("orderid"));
		}catch(Exception ex)
		{ System.out.println(ex); }
	}
	
	public PAYMENTDAOImpl()
	{}
 public void insert() 
 {
	 t.update(" insert into PAYMENT(PAYMENTMETHOD,AMOUNT,PAYMENTID,PAYMENTDATE,STATUS) values(?,?,paymentseq.NEXTVAL,SYSDATE,'COMPLETED' )" , new Object[] {p.getPAYMENTMETHOD(),p.getAMOUNT(),p.getPAYMENTID()});
 } 
 public void edit() 
 {
	 t.update(" update PAYMENT set PAYMENTMETHOD = ? ,AMOUNT = ? ,PAYMENTDATE = ? ,STATUS = ?  where PAYMENTID = ?" , new Object[] {p.getPAYMENTMETHOD(),p.getAMOUNT(),p.getPAYMENTDATE(),p.getSTATUS(),p.getPAYMENTID()});
 } 
 public void remove(int  PAYMENTID) 
 {  
	 t.update("delete from PAYMENT where  PAYMENTID = ? "  , new Object[] { PAYMENTID }  ); 
 } 
public java.util.List<business.PAYMENT> listPAYMENT() 
 { 
	return t.query("select * from PAYMENT" , new data.PAYMENTMapper()); 
 } 
 public business.PAYMENT getPAYMENT(int  PAYMENTID) 
 { 
	 return (business.PAYMENT)t.queryObject("select * from PAYMENT where PAYMENTID = " + PAYMENTID , new data.PAYMENTMapper()); 
 } 
 }
