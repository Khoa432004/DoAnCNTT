package mypack;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AccountDAO {
    public int registerAccount(Account acc) throws ClassNotFoundException {
    	String INSERT_USERS_SQL = "INSERT INTO account (TK, MK) VALUES (?, ?);";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/doancntt?useSSL=false", "root", "1234");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(1, acc.getUsername());
            preparedStatement.setString(2, acc.getPassword());
            System.out.println(acc.getUsername());
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return result;
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
