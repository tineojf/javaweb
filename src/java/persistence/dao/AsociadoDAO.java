package persistence.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import persistence.DBConnector;
import persistence.models.AsociadoModel;

public class AsociadoDAO {

    private static final DBConnector connector = DBConnector.getInstance();
    private static final Connection connection = connector.getConnection();

    public static ArrayList<AsociadoModel> findAll() {
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
}
