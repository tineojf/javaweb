package persistence.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Types;

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

    public String create(AsociadoModel _item) {
        String query = "INSERT INTO ASOCIADOS "
                + "(CODIGO, NOMBRE, APELLIDOS, ESTADO_CIVIL, EPS, DNI, APORTES,"
                + " NIVEL_ESTUDIO, SALARIO, NUMERO_HIJOS, TELEFONO, DIRECCION) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            if (_item.getEps() == null) {
                _item.setEps("No Definido");
            }
            if (_item.getNivelEstudio() == null) {
                _item.setNivelEstudio("No Definido");
            }
            if (_item.getDireccion() == null) {
                _item.setDireccion("No Definido");
            }
            preparedStatement.setNull(1, Types.INTEGER);
            preparedStatement.setString(2, _item.getNombre());
            preparedStatement.setString(3, _item.getApellidos());
            preparedStatement.setString(4, _item.getEstadoCivil());
            preparedStatement.setString(5, _item.getEps());
            preparedStatement.setString(6, _item.getDni());
            preparedStatement.setDouble(7, _item.getAportes());
            preparedStatement.setString(8, _item.getNivelEstudio());
            preparedStatement.setDouble(9, _item.getSalario());
            preparedStatement.setInt(10, _item.getNumeroHijos());
            preparedStatement.setString(11, _item.getTelefono());
            preparedStatement.setString(12, _item.getDireccion());

            int rowsInserted = preparedStatement.executeUpdate();
            if (rowsInserted > 0) {
                System.out.println("POST - CREATED");
                return "201: CREATED";
            } else {
                System.out.println("POST - NOT CREATED");
                return "400: NOT CREATED";
            }
        } catch (SQLException e) {
            System.err.println("POST error: " + e.getMessage());
            return "500 " + e.getMessage();
        }
    }

    public AsociadoModel findByDni(String dni) {
        String query = "SELECT * FROM ASOCIADOS WHERE DNI = ? LIMIT 1";

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, dni);
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

    public String delete(String dni) {
        AsociadoModel result = this.findByDni(dni);

        if (result == null) {
            System.out.println("DELETE - NOT FOUND");
            return "404: NOT FOUND";
        }

        String query = "DELETE FROM ASOCIADOS WHERE _column = ? LIMIT 1";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, dni);

            int rowsDeleted = preparedStatement.executeUpdate();

            if (rowsDeleted > 0) {
                System.out.println("DELETE - DELETED");
                return "202: DELETED";
            }
        } catch (SQLException e) {
            System.err.println("DELETE error: " + e.getMessage());
            return "500:" + e.getMessage();
        }
        return "500: Error";
    }
}
