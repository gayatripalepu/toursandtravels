package business;
public class HOTEL
 { 
private String HOTELNAME;
private int HOTELID;
private String HOTELTYPE;
private String ADDRESS;
private int COST;
private String IMGPATH;
public HOTEL() 
 { } 
public HOTEL(String HOTELNAME,int HOTELID, String HOTELTYPE,String ADDRESS,int COST,String IMGPATH) 
 { 
this.HOTELNAME = HOTELNAME; 
this.HOTELID = HOTELID; 
this.HOTELTYPE = HOTELTYPE; 
this.ADDRESS = ADDRESS; 
this.COST = COST; 
this.IMGPATH= IMGPATH;
 } 
public void setHOTELNAME(String HOTELNAME ) 
 {  
 this.HOTELNAME = HOTELNAME; 
 } 
public String getHOTELNAME( ) 
{  
 return HOTELNAME; 
 } 
public void setHOTELID(int HOTELID ) 
 {  
 this.HOTELID = HOTELID; 
 } 
public int getHOTELID( ) 
 {  
 return HOTELID; 
 } 
public void setHOTELTYPE(String HOTELTYPE ) 
 {  
 this.HOTELTYPE = HOTELTYPE; 
 } 
public String getHOTELTYPE( ) 
{  
 return HOTELTYPE; 
 } 
public void setADDRESS(String ADDRESS ) 
 {  
 this.ADDRESS = ADDRESS; 
 } 
public String getADDRESS( ) 
{  
 return ADDRESS; 
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
	this.IMGPATH = IMGPATH;
}
public String getIMGPATH()
{
	return this.IMGPATH;
}
public String toString() 
 { 
  return HOTELNAME+"  " +HOTELID+"  " +HOTELTYPE+"  " +ADDRESS+"  " +COST; 
 } 
 }
