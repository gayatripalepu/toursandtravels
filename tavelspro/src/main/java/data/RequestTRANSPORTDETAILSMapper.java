package data; 
  public class RequestTRANSPORTDETAILSMapper implements RequestMapper<business.TRANSPORTDETAILS>
 { 
public business.TRANSPORTDETAILS mapRequest(jakarta.servlet.http.HttpServletRequest req) throws jakarta.servlet.ServletException  
 {
	business.TRANSPORTDETAILS  obj = new business.TRANSPORTDETAILS(); 
	obj.setTID(Integer.parseInt(req.getParameter("txttid")));
	obj.setTRANSPORTNAME(req.getParameter("txttransportname"));
	obj.setTCATEGORYID(Integer.parseInt(req.getParameter("txttcategoryid")));
	obj.setCOST(Integer.parseInt(req.getParameter("txtcost")));
	obj.setIMGPATH(req.getParameter("txtimgpath"));
	return obj; 

 } 
 } 

