package persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnector {

    private static DBConnector instance;
    private Connection connection = null;

    private DBConnector() {
    }

    public static DBConnector getInstance() {
        if (instance == null) {
            instance = new DBConnector();
        }
        return instance;
    }

    public void connectToDB() throws SQLException, ClassNotFoundException {
        String databaseURL = "jdbc:mysql://localhost:9000/software";
        String databaseUser = "root";
        String databasePassword = "root";

        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection(databaseURL, databaseUser, databasePassword);
        System.out.println("Successful connection");
    }

    public Connection getConnection() {
        try {
            if (connection == null || connection.isClosed()) {
                this.connectToDB();
            }
            return connection;
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Error DB: " + e.getMessage());
            return null;
        }
    }

    public void closeConnection() {
        try {
            if (connection != null) {
                connection.close();
                System.out.println("Connection closed");
            }
        } catch (SQLException e) {
            System.out.println("SQLException: " + e.getMessage());
        }
    }

}
