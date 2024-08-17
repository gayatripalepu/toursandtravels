package data;

public class RPaymentMapper implements RequestMapper<business.OrderPayment>{

	
	 public business.OrderPayment mapRequest(jakarta.servlet.http.HttpServletRequest req) throws jakarta.servlet.ServletException  
	 {
		business.OrderPayment  obj = new business.OrderPayment(); 
		obj.setPAYMENTMETHOD(req.getParameter("txtpaymentmethod"));
		obj.setAMOUNT(Integer.parseInt(req.getParameter("txtamount")));
		obj.setPAYMENTID(Integer.parseInt(req.getParameter("txtpaymentid")));
		
		return obj; 

	 } 
	 } 
