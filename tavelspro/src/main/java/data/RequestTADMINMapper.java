package data; 
  public class RequestTADMINMapper implements RequestMapper<business.TADMIN>
 { 
public business.TADMIN mapRequest(jakarta.servlet.http.HttpServletRequest req) throws jakarta.servlet.ServletException  
 {
	business.TADMIN  obj = new business.TADMIN(); 
	obj.setADMINNAME(req.getParameter("txtadminname"));
	obj.setPASSWORD(req.getParameter("txtpassword"));
	return obj; 

 } 
 } 

