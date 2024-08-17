package business;
public class TUSER
 { 
private String USERNAME;
private String PHONENUMBER;
private int AGE;
private String GENDER;
private String AADHAAR;
private String PASSWORD;
private String SECQ;
private String ANS;
public TUSER() 
 { } 
public TUSER(String USERNAME,String PHONENUMBER,int AGE, String GENDER,String AADHAAR,String PASSWORD,String SECQ,String ANS) 
 { 
this.USERNAME = USERNAME; 
this.PHONENUMBER = PHONENUMBER; 
this.AGE = AGE; 
this.GENDER = GENDER; 
this.AADHAAR = AADHAAR; 
this.PASSWORD = PASSWORD; 
this.SECQ = SECQ; 
this.ANS = ANS; 
 
 } 
public void setUSERNAME(String USERNAME ) 
 {  
 this.USERNAME = USERNAME; 
 } 
public String getUSERNAME( ) 
{  
 return USERNAME; 
 } 
public void setPHONENUMBER(String PHONENUMBER ) 
 {  
 this.PHONENUMBER = PHONENUMBER; 
 } 
public String getPHONENUMBER( ) 
{  
 return PHONENUMBER; 
 } 
public void setAGE(int AGE ) 
 {  
 this.AGE = AGE; 
 } 
public int getAGE( ) 
 {  
 return AGE; 
 } 
public void setGENDER(String GENDER ) 
 {  
 this.GENDER = GENDER; 
 } 
public String getGENDER( ) 
{  
 return GENDER; 
 } 
public void setAADHAAR(String AADHAAR ) 
 {  
 this.AADHAAR = AADHAAR; 
 } 
public String getAADHAAR( ) 
{  
 return AADHAAR; 
 } 
public void setPASSWORD(String PASSWORD ) 
 {  
 this.PASSWORD = PASSWORD; 
 } 
public String getPASSWORD( ) 
{  
 return PASSWORD; 
 } 
public void setSECQ(String SECQ ) 
 {  
 this.SECQ = SECQ; 
 } 
public String getSECQ( ) 
{  
 return SECQ; 
 } 
public void setANS(String ANS ) 
 {  
 this.ANS = ANS; 
 } 
public String getANS( ) 
{  
 return ANS; 
 } 
public String toString() 
 { 
  return USERNAME+"  " +PHONENUMBER+"  " +AGE+"  " +GENDER+"  " +AADHAAR+"  " +PASSWORD+"  " +SECQ+"  " +ANS; 
 } 
 }
