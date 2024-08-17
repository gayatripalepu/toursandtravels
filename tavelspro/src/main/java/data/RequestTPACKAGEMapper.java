package data; 
  public class RequestTPACKAGEMapper implements RequestMapper<business.TPACKAGE>
 { 
	  public business.TPACKAGE mapRequest(jakarta.servlet.http.HttpServletRequest req) throws jakarta.servlet.ServletException  
	  {
		  business.TPACKAGE  obj = new business.TPACKAGE(); 
		  obj.setPID(Integer.parseInt(req.getParameter("txtpid")));
		  obj.setPACKAGENAME(req.getParameter("txtpackagename"));
		  obj.setNO_OF_DAYS(Integer.parseInt(req.getParameter("txtno_of_days")));
		  obj.setTRANSPORT(Integer.parseInt(req.getParameter("txttransport")));
		  obj.setHOTELID(Integer.parseInt(req.getParameter("txthotelid")));
		  obj.setCOST(Integer.parseInt(req.getParameter("txtcost")));
		  obj.setIMGPATH(req.getParameter("txtimgpath"));
		  return obj; 

	  } 
 } 

