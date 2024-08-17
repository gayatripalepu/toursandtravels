package business;
public class TADMIN
 { 
private String ADMINNAME;
private String PASSWORD;
public TADMIN() 
 { } 
public TADMIN(String ADMINNAME,String PASSWORD) 
 { 
this.ADMINNAME = ADMINNAME; 
this.PASSWORD = PASSWORD; 
 
 } 
public void setADMINNAME(String ADMINNAME ) 
 {  
 this.ADMINNAME = ADMINNAME; 
 } 
public String getADMINNAME( ) 
{  
 return ADMINNAME; 
 } 
public void setPASSWORD(String PASSWORD ) 
 {  
 this.PASSWORD = PASSWORD; 
 } 
public String getPASSWORD( ) 
{  
 return PASSWORD; 
 } 
public String toString() 
 { 
  return ADMINNAME+"  " +PASSWORD; 
 } 
 }
