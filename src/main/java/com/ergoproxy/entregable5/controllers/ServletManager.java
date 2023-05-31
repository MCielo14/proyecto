package com.ergoproxy.entregable5.controllers;
import com.ergoproxy.entregable5.models.daos.usuarioDao;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ServletManager", value = "/ServletUsuario")
public class ServletManager extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        usuarioDao usuariodao = new usuarioDao();
        request.setAttribute("listaUsuario",usuarioDao.listarUsuario());
        request.getRequestDispatcher("juegos/listaUsuario.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
