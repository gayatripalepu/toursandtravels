package business;
public class TPACKAGE
 { 
private int PID;
private String PACKAGENAME;
private int NO_OF_DAYS;
private int TRANSPORT;
private int HOTELID;
private int COST;
private String IMGPATH;
public TPACKAGE() 
 { } 
public TPACKAGE(int PID, String PACKAGENAME,int NO_OF_DAYS, int TRANSPORT, int HOTELID, int COST,String IMGPATH) 
 { 
this.PID = PID; 
this.PACKAGENAME = PACKAGENAME; 
this.NO_OF_DAYS = NO_OF_DAYS; 
this.TRANSPORT = TRANSPORT; 
this.HOTELID = HOTELID; 
this.COST = COST; 
this.IMGPATH =IMGPATH;
 
 } 
public void setPID(int PID ) 
 {  
 this.PID = PID; 
 } 
public int getPID( ) 
 {  
 return PID; 
 } 
public void setPACKAGENAME(String PACKAGENAME ) 
 {  
 this.PACKAGENAME = PACKAGENAME; 
 } 
public String getPACKAGENAME( ) 
{  
 return PACKAGENAME; 
 } 
public void setNO_OF_DAYS(int NO_OF_DAYS ) 
 {  
 this.NO_OF_DAYS = NO_OF_DAYS; 
 } 
public int getNO_OF_DAYS( ) 
 {  
 return NO_OF_DAYS; 
 } 
public void setTRANSPORT(int TRANSPORT ) 
 {  
 this.TRANSPORT = TRANSPORT; 
 } 
public int getTRANSPORT( ) 
 {  
 return TRANSPORT; 
 } 
public void setHOTELID(int HOTELID ) 
 {  
 this.HOTELID = HOTELID; 
 } 
public int getHOTELID( ) 
 {  
 return HOTELID; 
 } 
public void setCOST(int COST ) 
 {  
 this.COST = COST; 
 } 
public int getCOST( ) 
 {  
 return COST; 
 } 
public void setIMGPATH(String IMGPATH)
{
	this.IMGPATH =  IMGPATH;
}
public String getIMGPATH()
{
	return IMGPATH;
}
public String toString() 
 { 
  return PID+"  " +PACKAGENAME+"  " +NO_OF_DAYS+"  " +TRANSPORT+"  " +HOTELID+"  " +COST; 
 } 
 }
