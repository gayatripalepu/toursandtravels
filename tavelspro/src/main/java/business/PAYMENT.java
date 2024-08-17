package business;
public class PAYMENT
 { 
private String PAYMENTMETHOD;
private int AMOUNT;
private int PAYMENTID;
private String PAYMENTDATE;
private String STATUS;

public PAYMENT() 
 { } 
public PAYMENT(String PAYMENTMETHOD,int AMOUNT, int PAYMENTID, String PAYMENTDATE, String STATUS) 
 { 
this.PAYMENTMETHOD = PAYMENTMETHOD; 
this.AMOUNT = AMOUNT; 
this.PAYMENTID = PAYMENTID; 
this.PAYMENTDATE = PAYMENTDATE; 
this.STATUS = STATUS; 

 } 
public void setPAYMENTMETHOD(String PAYMENTMETHOD ) 
 {  
 this.PAYMENTMETHOD = PAYMENTMETHOD; 
 } 
public String getPAYMENTMETHOD( ) 
{  
 return PAYMENTMETHOD; 
 } 
public void setAMOUNT(int AMOUNT ) 
 {  
 this.AMOUNT = AMOUNT; 
 } 
public int getAMOUNT( ) 
 {  
 return AMOUNT; 
 } 
public void setPAYMENTID(int PAYMENTID ) 
 {  
 this.PAYMENTID = PAYMENTID; 
 } 
public int getPAYMENTID( ) 
 {  
 return PAYMENTID; 
 } 
public void setPAYMENTDATE(String PAYMENTDATE ) 
 {  
 this.PAYMENTDATE = PAYMENTDATE; 
 } 
public String getPAYMENTDATE( ) 
 {  
 return PAYMENTDATE; 
 } 
public void setSTATUS(String STATUS ) 
 {  
 this.STATUS = STATUS; 
 } 
public String getSTATUS( ) 
{  
 return STATUS; 
 } 

public String toString() 
 { 
  return PAYMENTMETHOD+"  " +AMOUNT+"  " +PAYMENTID+"  " +PAYMENTDATE+"  " +STATUS+"  "; 
 } 
 }
