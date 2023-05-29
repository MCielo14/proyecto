package com.ergoproxy.entregable5.controllers;

import com.ergoproxy.entregable5.models.daos.JuegosDao;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ServletJuegos", value = "/ServletJuegos")
public class ServletJuegos extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        JuegosDao juegosDao = new JuegosDao();
        request.setAttribute("listaJuegos",juegosDao.listarJuegos());
        request.getRequestDispatcher("juegos/listaJuego.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
