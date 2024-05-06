package tineo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Connection;


public class App {
    private static final ConnectorDB connector = ConnectorDB.getInstance();
    private static final Connection connection = connector.getConnection();

    public static void main(String[] args) {
        try {
            ArrayList<GuestsModel> guests = findAll();
            ArrayList<Integer> roles = findRoles();

            //Excel excel = new Excel(guests, roles);
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());

        } finally {
            connector.closeConnection();
        }
    }

    public static ArrayList<Integer> findRoles() {
        ArrayList<Integer> listDB = new ArrayList<>();
        String query = "SELECT ROLE, COUNT(ID) AS 'QUANTITY' FROM guests GROUP BY ROLE";

        try {
            ResultSet result = connection.createStatement().executeQuery(query);

            while (result.next()) {
                listDB.add(result.getInt("QUANTITY"));
            }

            return listDB;
        } catch (SQLException e) {
            System.out.println("GET error: " + e.getMessage());
            return null;
        }
    }

    public static ArrayList<GuestsModel> findAll() {
        ArrayList<GuestsModel> listDB = new ArrayList<>();
        String query = "SELECT * FROM guests";

        try {
            ResultSet result = connection.createStatement().executeQuery(query);

            while (result.next()) {
                listDB.add(new GuestsModel(result.getInt("ID"), result.getString("NAME"), result.getString("EMAIL"), result.getString("ROLE")));
            }

            return listDB;
        } catch (SQLException e) {
            System.out.println("GET error: " + e.getMessage());
            return null;
        }
    }
}
