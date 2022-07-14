package mx.edu.utez.practica.aprendiendo1servlets.controller.person;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletPerson ",

        urlPatterns = {
        "/getPersons",
        "/savePerson",
        "/createPerson",
        "/getPerson",
        "/updatePerson",
        "/deletePerson"})  //diferentes peticiones

public class ServletPerson extends HttpServlet {
    String action;
    String urlRedirect = "/getPersons";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.setCharacterEncoding("UTF-8"); // la peticion se codifica para caracter especial
        action = request.getServletPath(); // tomar la url de la peticion

        switch (action){
            case "/getPersons":
                //creacion de la pagina con result dando jsp
                urlRedirect = "/WEB-INF/view/person/indexPerson.jsp";
                break;
            default:
                urlRedirect="/getPersons";
        }

        request.getRequestDispatcher(urlRedirect).forward(request,response); //decir a donde lo voy a mandar
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

    }
}
