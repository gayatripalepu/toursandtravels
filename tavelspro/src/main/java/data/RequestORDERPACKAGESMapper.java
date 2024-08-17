package data; 
  public class RequestORDERPACKAGESMapper implements RequestMapper<business.ORDERPACKAGES>
 { 
public business.ORDERPACKAGES mapRequest(jakarta.servlet.http.HttpServletRequest req) throws jakarta.servlet.ServletException  
 {
	business.ORDERPACKAGES  obj = new business.ORDERPACKAGES(); 
	obj.setORDERID(Integer.parseInt(req.getParameter("txtorderid")));
	obj.setPACKAGEID(Integer.parseInt(req.getParameter("txtpackageid")));
	obj.setCUSTOMERNAME(req.getParameter("txtcustomername"));
	obj.setREGISTEREDDATE(req.getParameter("txtregistereddate"));
	obj.setREGTIME(req.getParameter("txtregtime"));
	obj.setTRAVELDATE(req.getParameter("txttraveldate"));
	obj.setSTATUS(req.getParameter("txtstatus"));
	return obj; 

 } 
 } 

