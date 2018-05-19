package com.pacifi.academico.servicios;

import com.pacifi.academico.database.DBCon;
import com.pacifi.academico.entidad.Estudiante;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EstudianteDao {
    private DBCon dbc;
    private Connection con;
    private Statement stmt;
    private PreparedStatement ps = null;


    public EstudianteDao() {
        dbc = new DBCon();
        con = dbc.getConnection();
        stmt = dbc.getStatement();
    }


    public List<Estudiante> listEstudiante() throws SQLException {
        List listaEstudiantes = new ArrayList();
        DBCon dbConn = new DBCon();

        try {
            String query = "Select p.*, e.codigo " +
                    "From persona p, estudiante e " +
                    "Where p.idPersona = e.idPersona " +
                    "Order By p.paterno, p.materno ";
            ps = con.prepareStatement(query);
            ResultSet resultSet = ps.executeQuery();
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
        } catch (SQLException ex) {
            throw new SQLException(ex);
        }
        return listaEstudiantes;
    }
}
