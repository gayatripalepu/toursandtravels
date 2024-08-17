package data; 
  public class RequestTUSERMapper implements RequestMapper<business.TUSER>
 { 
public business.TUSER mapRequest(jakarta.servlet.http.HttpServletRequest req) throws jakarta.servlet.ServletException  
 {
	business.TUSER  obj = new business.TUSER(); 
	obj.setUSERNAME(req.getParameter("txtusername"));
	obj.setPHONENUMBER(req.getParameter("txtphonenumber"));
	obj.setAGE(Integer.parseInt(req.getParameter("txtage")));
	obj.setGENDER(req.getParameter("txtgender"));
	obj.setAADHAAR(req.getParameter("txtaadhaar"));
	obj.setPASSWORD(req.getParameter("txtpassword"));
	obj.setSECQ(req.getParameter("txtsecq"));
	obj.setANS(req.getParameter("txtans"));
 return obj; 

 } 
 } 

