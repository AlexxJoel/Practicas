package web;

import datos.AlumnoDaoJDBC;
import dominio.Alumno;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "servletControlador", value = "/servletControlador")
public class servletControlador extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Alumno> alumnos = new AlumnoDaoJDBC().listar();
        System.out.println("Alumnos = " +alumnos);
        request.setAttribute("ALumnos", alumnos);
        request.getRequestDispatcher("clientes.jsp").forward(request,response);

        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + "AAAAAAAAAA" + "</h1>");
        out.println("</body></html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
