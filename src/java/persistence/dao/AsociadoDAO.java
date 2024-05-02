package persistence.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import persistence.DBConnector;
import persistence.models.AsociadoModel;

public class AsociadoDAO {

    private final DBConnector connector = DBConnector.getInstance();
    private final Connection connection = connector.getConnection();

    public AsociadoDAO() {
    }

    public ArrayList<AsociadoModel> findAll() {
        ArrayList<AsociadoModel> listDB = new ArrayList<>();
        String query = "SELECT * FROM ASOCIADOS";

        try {
            ResultSet result = connection.createStatement().executeQuery(query);

            while (result.next()) {
                listDB.add(new AsociadoModel(
                        result.getInt("CODIGO"),
                        result.getString("NOMBRE"),
                        result.getString("APELLIDOS"),
                        result.getString("ESTADO_CIVIL"),
                        result.getString("EPS"),
                        result.getString("DNI"),
                        result.getDouble("APORTES"),
                        result.getString("NIVEL_ESTUDIO"),
                        result.getDouble("SALARIO"),
                        result.getInt("NUMERO_HIJOS"),
                        result.getString("TELEFONO"),
                        result.getString("DIRECCION"))
                );
            }
            return listDB;
        } catch (SQLException e) {
            System.out.println("GET error: " + e.getMessage());
            return null;
        }
    }

    public int countAll() {
        String query = "SELECT COUNT(CODIGO) AS 'COUNT' FROM ASOCIADOS";
        int count = 0;

        try {
            ResultSet result = connection.createStatement().executeQuery(query);

            while (result.next()) {
                count = result.getInt("COUNT");
            }

            return count;
        } catch (SQLException e) {
            System.out.println("GET error: " + e.getMessage());
            return count;
        }
    }

    public AsociadoModel findByID(int id) {
        String query = "SELECT * FROM ASOCIADOS WHERE CODIGO = ?";

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, id);
            ResultSet result = statement.executeQuery();

            if (result.next()) {
                AsociadoModel item = new AsociadoModel(
                        result.getInt("CODIGO"),
                        result.getString("NOMBRE"),
                        result.getString("APELLIDOS"),
                        result.getString("ESTADO_CIVIL"),
                        result.getString("EPS"),
                        result.getString("DNI"),
                        result.getDouble("APORTES"),
                        result.getString("NIVEL_ESTUDIO"),
                        result.getDouble("SALARIO"),
                        result.getInt("NUMERO_HIJOS"),
                        result.getString("TELEFONO"),
                        result.getString("DIRECCION")
                );
                return item;
            }

            return null;
        } catch (SQLException e) {
            System.out.println("GET error: " + e.getMessage());
            return null;
        }
    }

}
