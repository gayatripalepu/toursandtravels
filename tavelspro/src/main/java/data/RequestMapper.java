package data;


public interface RequestMapper<T> 
{
    public T mapRequest(jakarta.servlet.http.HttpServletRequest  req) throws jakarta.servlet.ServletException;
    
}
