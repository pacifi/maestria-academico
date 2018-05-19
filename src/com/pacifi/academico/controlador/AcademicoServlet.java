package com.pacifi.academico.controlador;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.pacifi.academico.entidad.Estudiante;
import com.pacifi.academico.servicios.EstudianteDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.util.List;

@WebServlet(name = "AcademicoServlet", urlPatterns = {"/academico"})
public class AcademicoServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EstudianteDao dao = new EstudianteDao();
        try {
            List<Estudiante> listaEstudiantes = dao.listEstudiante();
            System.out.println(listaEstudiantes);
            Gson gson = new
                    GsonBuilder().setDateFormat("dd/MM/yyyy").create();
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(gson.toJson(listaEstudiantes));
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error en controller" + e.getMessage());
        }
    }
}
