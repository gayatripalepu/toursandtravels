package business;
public class TRANSPORTDETAILS
 { 
private int TID;
private String TRANSPORTNAME;
private int TCATEGORYID;
private int COST;
private String IMGPATH;
public TRANSPORTDETAILS() 
 { } 
public TRANSPORTDETAILS(int TID, String TRANSPORTNAME,int TCATEGORYID, int COST,String IMGPATH) 
 { 
this.TID = TID; 
this.TRANSPORTNAME = TRANSPORTNAME; 
this.TCATEGORYID = TCATEGORYID; 
this.COST = COST; 
this.IMGPATH = IMGPATH;
 
 } 
public void setTID(int TID ) 
 {  
 this.TID = TID; 
 } 
public int getTID( ) 
 {  
 return TID; 
 } 
public void setTRANSPORTNAME(String TRANSPORTNAME ) 
 {  
 this.TRANSPORTNAME = TRANSPORTNAME; 
 } 
public String getTRANSPORTNAME( ) 
{  
 return TRANSPORTNAME; 
 } 
public void setTCATEGORYID(int TCATEGORYID ) 
 {  
 this.TCATEGORYID = TCATEGORYID; 
 } 
public int getTCATEGORYID( ) 
 {  
 return TCATEGORYID; 
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
	this.IMGPATH =IMGPATH;
}
public String getIMGPATH()
{
	return this.IMGPATH;
}
public String toString() 
 { 
  return TID+"  " +TRANSPORTNAME+"  " +TCATEGORYID+"  " +COST; 
 } 
 }
