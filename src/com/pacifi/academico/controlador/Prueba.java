package com.pacifi.academico.controlador;

import com.pacifi.academico.database.DBCon;
import com.pacifi.academico.entidad.Estudiante;
import com.pacifi.academico.servicios.EstudianteDao;

import java.sql.SQLException;
import java.util.List;

public class Prueba {
    public static void main(String args[]) throws SQLException, ClassNotFoundException {
        EstudianteDao dao = new EstudianteDao();
        List<Estudiante> listaEs = dao.listEstudiante();
        for (int i = 0; i <= listaEs.size(); i++) {
            System.out.println(listaEs.get(i).getNombres());
        }


    }
}
