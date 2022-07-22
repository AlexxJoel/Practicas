package com.tienda.tienda.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;


@WebServlet(name = "ServletPerson",
        urlPatterns = {
                "/getPersons",
                "/savePerson",
                "/createPerson",
                "/getPerson",
                "/updatePerson",
                "/deletePerson"
        })
public class ServletPerson extends HttpServlet {

    String accion = null;
    String urlRedirect = "/getPersons";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        accion = request.getServletPath(); //getPersons

        if (accion.equalsIgnoreCase("/getPersons")){
            urlRedirect = "/WEB-INF/person/indexPerson.jsp";
        }else {
            urlRedirect = "/getPersons";
        }

        request.getRequestDispatcher(urlRedirect).forward(request,response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
