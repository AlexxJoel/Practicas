package com.tienda.tienda.controller;

import com.tienda.tienda.model.BeanPerson;
import com.tienda.tienda.service.ServicePerson;
import com.tienda.tienda.utils.ResultAction;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


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
    ServicePerson serv = new ServicePerson();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        accion = request.getServletPath(); //getPersons


        if (accion.equalsIgnoreCase("/getPersons")){
            List<BeanPerson> listarPersons = new ServicePerson().showPersons();
            System.out.println(listarPersons.size());
            request.setAttribute("lista", listarPersons); //Aqui mandamos la lista
            urlRedirect = "/WEB-INF/person/indexPerson.jsp";
        } else if (accion.equalsIgnoreCase("/createPerson")) {
            urlRedirect = "/WEB-INF/person/createPerson.jsp";
        } else if (accion.equalsIgnoreCase("/getPerson")) {
            String id = request.getParameter("id");
            id = (id == null)? "0": id;
            //System.out.println("ID ->" + id);

            try {
                BeanPerson person = serv.findPerson(Integer.parseInt(id));
                System.out.println(person);

                request.setAttribute("person",person);
                urlRedirect = "/WEB-INF/person/updatePerson.jsp";
            }catch (Exception e){
                urlRedirect = "/getPersons";
            }

        }else {
            urlRedirect = "/getPersons";
        }

        request.getRequestDispatcher(urlRedirect).forward(request,response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String accion = request.getServletPath();
            if (accion.equalsIgnoreCase("/savePerson")){
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String lastname = request.getParameter("lastname");
                String age = request.getParameter("age");
                String phone = request.getParameter("phone");

                BeanPerson bean = new BeanPerson();

                bean.setName(name);
                bean.setLastName(lastname);
                int agei = Integer.parseInt(age);
                bean.setAge(agei);
                bean.setEmail(email);
                bean.setPhone(phone);

                ResultAction result = serv.savePerson(bean);

                urlRedirect = "/getPersons?result="+result.isResult()+"&message="+result.getMessage()+"&status="+result.getStatus();
            }else  if (accion.equalsIgnoreCase("/updatePerson")){
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String lastname = request.getParameter("lastname");
                String age = request.getParameter("age");
                String phone = request.getParameter("phone");
                String id = request.getParameter("id");

                BeanPerson bean = new BeanPerson();

                bean.setName(name);
                bean.setLastName(lastname);
                int agei = Integer.parseInt(age);
                bean.setAge(agei);
                bean.setEmail(email);
                bean.setPhone(phone);
                bean.setId(Integer.parseInt(id));

                ResultAction result = serv.upadatePerson(bean);

                        urlRedirect = "/getPersons?result="+result.isResult()+"&message="+result.getMessage()+"&status="+result.getStatus();
            }

        response.sendRedirect(request.getContextPath()+urlRedirect);

    }
}
