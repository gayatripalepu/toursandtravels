package data; 
  public class RequestPAYMENTMapper implements RequestMapper<business.PAYMENT>
 { 
	  
int getValue(String value)
{
	return Integer.parseInt((value!=null?value:"0"));
}

 public business.PAYMENT mapRequest(jakarta.servlet.http.HttpServletRequest req) throws jakarta.servlet.ServletException  
 {
	business.PAYMENT  obj = new business.PAYMENT(); 
	obj.setPAYMENTMETHOD(req.getParameter("txtpaymentmethod"));
	obj.setAMOUNT(getValue(req.getParameter("txtamount")));
	obj.setPAYMENTID(getValue(req.getParameter("txtpaymentid")));
	//obj.setPAYMENTDATE(req.getParameter("txtpaymentdate"));
	//obj.setSTATUS(req.getParameter("txtstatus"));
	
	
	return obj; 

 } 
 } 

