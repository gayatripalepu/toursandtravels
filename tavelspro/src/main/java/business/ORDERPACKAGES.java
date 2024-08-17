package business;
public class ORDERPACKAGES
 { 
private int ORDERID;
private int PACKAGEID;
private String CUSTOMERNAME;
private String REGISTEREDDATE;
private String REGTIME;
private String TRAVELDATE;
private String STATUS;
private int PAYMENTID;
public ORDERPACKAGES() 
 { } 
public ORDERPACKAGES(int ORDERID, int PACKAGEID, String CUSTOMERNAME,String REGISTEREDDATE, String REGTIME,String TRAVELDATE, String STATUS,int PAYMENTID) 
 { 
this.ORDERID = ORDERID; 
this.PACKAGEID = PACKAGEID; 
this.CUSTOMERNAME = CUSTOMERNAME; 
this.REGISTEREDDATE = REGISTEREDDATE; 
this.REGTIME = REGTIME; 
this.TRAVELDATE = TRAVELDATE; 
this.STATUS = STATUS; 
this.PAYMENTID = PAYMENTID;
 
 } 
public void setORDERID(int ORDERID ) 
 {  
 this.ORDERID = ORDERID; 
 } 
public int getORDERID( ) 
 {  
 return ORDERID; 
 } 
public void setPACKAGEID(int PACKAGEID ) 
 {  
 this.PACKAGEID = PACKAGEID; 
 } 
public int getPACKAGEID( ) 
 {  
 return PACKAGEID; 
 } 
public void setCUSTOMERNAME(String CUSTOMERNAME ) 
 {  
 this.CUSTOMERNAME = CUSTOMERNAME; 
 } 
public String getCUSTOMERNAME( ) 
{  
 return CUSTOMERNAME; 
 } 
public void setREGISTEREDDATE(String REGISTEREDDATE ) 
 {  
 this.REGISTEREDDATE = REGISTEREDDATE; 
 } 
public String getREGISTEREDDATE( ) 
 {  
 return REGISTEREDDATE; 
 } 
public void setREGTIME(String REGTIME ) 
 {  
 this.REGTIME = REGTIME; 
 } 
public String getREGTIME( ) 
{  
 return REGTIME; 
 } 
public void setTRAVELDATE(String TRAVELDATE ) 
 {  
 this.TRAVELDATE = TRAVELDATE; 
 } 
public String getTRAVELDATE( ) 
 {  
 return TRAVELDATE; 
 } 
public void setSTATUS(String STATUS ) 
 {  
 this.STATUS = STATUS; 
 } 
public String getSTATUS( ) 
{  
 return STATUS; 
 }
public void setPAYMENTID(int PAYMENTID)
{
	this.PAYMENTID = PAYMENTID;
}
public int getPAYMENTID()
{
	return this.PAYMENTID;
}
public String toString() 
 { 
  return ORDERID+"  " +PACKAGEID+"  " +CUSTOMERNAME+"  " +REGISTEREDDATE+"  " +REGTIME+"  " +TRAVELDATE+"  " +STATUS; 
 } 
 }
