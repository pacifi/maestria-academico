package com.pacifi.academico.database;

import com.pacifi.academico.entidad.Estudiante;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class MySQLAccess {
    private Connection connect = null;
    private Statement statement = null;
    private PreparedStatement preparedStatement = null;
    private ResultSet resultSet = null;

    public List getEstudiantes() throws Exception {
        List listaEstudiantes = new ArrayList();
        try {

            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (Exception e) {
                System.err.println("erro de driver" + e.getMessage());
            }
            try {
                connect = DriverManager
                            .getConnection("jdbc:mysql://172.17.0.2:3306/academico?"
                                + "user=root&password=12345");
            } catch (Exception e) {
                System.err.println("error de conn" + e.getMessage());
            }
            String query = "Select p.*, e.codigo " +
                    "From persona p, estudiante e " +
                    "Where p.idPersona = e.idPersona " +
                    "Order By p.paterno, p.materno ";
            statement = connect.createStatement();
            resultSet = statement
                    .executeQuery(query);
            while (resultSet.next()) {
                Estudiante estudiante = new
                        Estudiante(resultSet.getString("codigo"));
                estudiante.setDni(resultSet.getString("dni"));
                estudiante.setPaterno(resultSet.getString("paterno"));
                estudiante.setMaterno(resultSet.getString("materno"));
                estudiante.setNombres(resultSet.getString("nombres"));
                estudiante.setFechaNacimiento(resultSet.getDate("fechaNacimiento"));
                estudiante.setEmail(resultSet.getString("email"));
                estudiante.setDireccion(resultSet.getString("direccion"));
                estudiante.setEdad(estudiante.getEdad());
                listaEstudiantes.add(estudiante);
            }
        } catch (Exception e) {
            System.err.println("Error de Coneccion: " + e.getMessage());
        } finally {
            close();
        }
        return listaEstudiantes;
    }

    private void close() {
        try {
            if (resultSet != null) {
                resultSet.close();
            }
            if (statement != null) {
                statement.close();
            }
            if (connect != null) {
                connect.close();
            }
        } catch (Exception e) {
        }
    }
}
