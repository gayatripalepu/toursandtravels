package data;

public class OrderPaymentDAOImpl {

	
	
		JDBCTemplate t = new JDBCTemplate();
		data.RPaymentMapper rm = new data.RPaymentMapper();
		business.OrderPayment p = null; 
		int ordid=0;
		public OrderPaymentDAOImpl(jakarta.servlet.http.HttpServletRequest request)
		{
			try {
				p = rm.mapRequest(request);
				
			}catch(Exception ex)
			{ System.out.println(ex); }
		}
		
		public OrderPaymentDAOImpl()
		{}
	 public int insert() 
	 {
		 int n=0;
		n= t.update(" insert into PAYMENT(PAYMENTMETHOD,AMOUNT,PAYMENTID,PAYMENTDATE,STATUS) values(?,?,?,SYSDATE,'COMPLETED' )" , new Object[] {p.getPAYMENTMETHOD(),p.getAMOUNT(),p.getPAYMENTID()});
		return n;
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
