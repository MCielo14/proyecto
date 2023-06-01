package com.ergoproxy.entregable5.manager.controllers;
import com.ergoproxy.entregable5.manager.models.daos.managerDao;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ServletManager", value = "/ServletManager")
public class ServletManager extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        managerDao managerdao = new managerDao();
        request.setAttribute("listaManager", managerDao.listarManager());
        request.getRequestDispatcher("juegos/listaUsuario.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
