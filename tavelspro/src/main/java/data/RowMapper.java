package data;


public interface RowMapper<T>
{
public T mapRow(java.sql.ResultSet rs,int rowcount) throws java.sql.SQLException;
}