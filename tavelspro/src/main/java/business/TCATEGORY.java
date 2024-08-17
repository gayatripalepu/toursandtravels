package business;
public class TCATEGORY
 { 
private int TCATID;
private String TRANSPORTNAME;
public TCATEGORY() 
 { } 
public TCATEGORY(int TCATID, String TRANSPORTNAME) 
 { 
this.TCATID = TCATID; 
this.TRANSPORTNAME = TRANSPORTNAME; 
 
 } 
public void setTCATID(int TCATID ) 
 {  
 this.TCATID = TCATID; 
 } 
public int getTCATID( ) 
 {  
 return TCATID; 
 } 
public void setTRANSPORTNAME(String TRANSPORTNAME ) 
 {  
 this.TRANSPORTNAME = TRANSPORTNAME; 
 } 
public String getTRANSPORTNAME( ) 
{  
 return TRANSPORTNAME; 
 } 
public String toString() 
 { 
  return TCATID+"  " +TRANSPORTNAME; 
 } 
 }
