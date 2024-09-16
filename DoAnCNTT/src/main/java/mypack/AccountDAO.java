package mypack;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AccountDAO {
    DBConnection Dbconnection = new DBConnection(); 
    public int registerAccount(Account acc) throws ClassNotFoundException {
    	String INSERT_USERS_SQL = "INSERT INTO account (TK, MK) VALUES (?, ?);";

        int result = 0;
        try (Connection connection = Dbconnection.getConnection() ;

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(1, acc.getUsername());
            preparedStatement.setString(2, acc.getPassword());
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) 
        {
            // process sql exception
            printSQLException(e);
        }
        return result;
    }
    
    public boolean CheckTkDaTonTai(String tk) 
    {
        String SELECT_USER_BY_TK = "SELECT EXISTS (SELECT 1 FROM account WHERE TK = ?)";

        try (Connection connection = Dbconnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_TK)) {
            preparedStatement.setString(1, tk);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                return resultSet.getInt(1) > 0;
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        
        return false;
    }
    public boolean CheckDoDaiMK(String mk ,String nhaplaimk)
    {
    	if(mk.length() < 8 || nhaplaimk.length() < 8)
    		return false;
    	return true;
    }
    public boolean CheckMKTrung(String mk,String nhaplaimk)
    {
    	if(mk == nhaplaimk)
    		return true;
    	return false;
    }
    public boolean CheckNull(String tk ,String mk,String nhaplaimk)
    {
    	if(tk != null && mk != null && nhaplaimk != null)
    		return true;
    	return false;
    }
    public boolean Check(String tk,String mk,String nhaplaimk)
    {
    	if(CheckDoDaiMK(mk, nhaplaimk) == true && CheckMKTrung(mk, nhaplaimk) == true && CheckNull(tk, mk, nhaplaimk) == true && CheckTkDaTonTai(tk) == false)
    		return true;
    	return false;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
