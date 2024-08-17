package data; 
  public class RequestTCATEGORYMapper implements RequestMapper<business.TCATEGORY>
 { 
public business.TCATEGORY mapRequest(jakarta.servlet.http.HttpServletRequest req) throws jakarta.servlet.ServletException  
 {
	business.TCATEGORY  obj = new business.TCATEGORY(); 
	obj.setTCATID(Integer.parseInt(req.getParameter("txttcatid")));
	obj.setTRANSPORTNAME(req.getParameter("txttransportname"));
	return obj; 

 } 
 } 

