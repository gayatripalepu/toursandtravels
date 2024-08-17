package util;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class Util
{
private static Date date = new Date();
private static SimpleDateFormat DateFor = new SimpleDateFormat("MM/dd/yyyy");

public static String toDay()
{
	DateFor = new SimpleDateFormat("dd-MM-yyyy");
	return  DateFor.format(date);
}
public static String now()
{
	DateFor = new SimpleDateFormat("hh:mm:ss");
	return  DateFor.format(date);
}
public static String getDate(java.util.Date date)
{
	DateFor = new SimpleDateFormat("dd-MM-yyyy");
	return  DateFor.format(date);
}

public static String oracle()
{
	DateFor = new SimpleDateFormat("dd-MMM-yy");
	return  DateFor.format(date);
}
public static String getOracle(String ldate, String format)
{
	DateFor = new SimpleDateFormat(format);
	try {
		date = DateFor.parse(ldate);
		DateFor = new SimpleDateFormat("dd-MMM-yy");
		//System.out.println(DateFor.format(date));
	return  DateFor.format(date);
	}catch(Exception ex)
	{}
	return null;
}
/*
public static void main(String args[])
{
System.out.println(toDay());
System.out.println(now());
System.out.println(oracle());
System.out.println(getDate(new java.util.Date()));
System.out.println(getOracle(new java.util.Date()));
}
*/
}