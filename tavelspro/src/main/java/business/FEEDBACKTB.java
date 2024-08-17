package business;
public class FEEDBACKTB
 { 
private int FEEDID;	
private String USERNAME;
private String FEEDDATE;
private String COMMENTS;
private int PID;
public FEEDBACKTB() 
 { } 
public FEEDBACKTB(int FEEDID,String USERNAME,String FEEDDATE,int PID, String COMMENTS) 
 { 
this.FEEDID = FEEDID;	
this.USERNAME = USERNAME; 
this.FEEDDATE = FEEDDATE;
this.PID=PID;
this.COMMENTS = COMMENTS;
 }
public void setFEEDID(int FEEDID)
 {
	this.FEEDID =FEEDID;
 }
public int getFEEDID()
{
	return this.FEEDID;
}
public void setUSERNAME(String USERNAME ) 
 {  
 this.USERNAME = USERNAME; 
 } 
public String getUSERNAME( ) 
{  
 return USERNAME; 
 } 
public void setFEEDDATE(String FEEDDATE ) 
 {  
 this.FEEDDATE = FEEDDATE; 
 } 
public String getFEEDDATE( ) 
 {  
 return FEEDDATE; 
 } 
public void setPID(int PID)
{
	this.PID = PID;
}
public int getPID()
{
	return this.PID;
}
public void setCOMMENTS(String COMMENTS ) 
 {  
 this.COMMENTS = COMMENTS; 
 } 
public String getCOMMENTS( ) 
{  
 return COMMENTS; 
 } 
public String toString() 
 { 
  return FEEDID+" "+USERNAME+"  "+PID+" " +FEEDDATE+"  " +COMMENTS; 
 } 
 }
