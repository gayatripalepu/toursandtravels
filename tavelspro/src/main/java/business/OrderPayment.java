package business;

public class OrderPayment {

	
	private String PAYMENTMETHOD;
	private int AMOUNT;
	private int PAYMENTID;
	private String PAYMENTDATE;
	private String STATUS;

	public OrderPayment() 
	 { } 
	public OrderPayment(String PAYMENTMETHOD,int AMOUNT, int PAYMENTID) 
	 { 
	this.PAYMENTMETHOD = PAYMENTMETHOD; 
	this.AMOUNT = AMOUNT; 
	this.PAYMENTID = PAYMENTID; 
	

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

	public String toString() 
	 { 
	  return PAYMENTMETHOD+"  " +AMOUNT+"  " +PAYMENTID; 
	 } 
	 }
