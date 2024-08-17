package data; 
  public class RequestHOTELMapper implements RequestMapper<business.HOTEL>
 { 

	  public business.HOTEL mapRequest(jakarta.servlet.http.HttpServletRequest req) throws jakarta.servlet.ServletException  
	  {
		  business.HOTEL  obj = new business.HOTEL(); 
		  obj.setHOTELNAME(req.getParameter("txthotelname"));
		  obj.setHOTELID(Integer.parseInt(req.getParameter("txthotelid")));
		  obj.setHOTELTYPE(req.getParameter("txthoteltype"));
		  obj.setADDRESS(req.getParameter("txtaddress"));
		  obj.setCOST(Integer.parseInt(req.getParameter("txtcost")));
		  obj.setIMGPATH(req.getParameter("txtimgpath"));
		  return obj; 

	  } 
 } 

