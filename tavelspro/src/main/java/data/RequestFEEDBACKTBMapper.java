package data; 
  public class RequestFEEDBACKTBMapper implements RequestMapper<business.FEEDBACKTB>
 { 
public business.FEEDBACKTB mapRequest(jakarta.servlet.http.HttpServletRequest req) throws jakarta.servlet.ServletException  
 {
	business.FEEDBACKTB  obj = new business.FEEDBACKTB(); 
obj.setFEEDID(Integer.parseInt(req.getParameter("txtfeedid")));	
obj.setUSERNAME(req.getParameter("txtusername"));
obj.setPID(Integer.parseInt(req.getParameter("txtpid")));
obj.setFEEDDATE(req.getParameter("txtfeeddate"));
obj.setCOMMENTS(req.getParameter("txtcomments"));
 return obj; 

 } 
 } 

