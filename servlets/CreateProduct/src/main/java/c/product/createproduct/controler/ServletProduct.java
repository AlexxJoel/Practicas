package c.product.createproduct.controler;

import com.mysql.cj.util.DnsSrv;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Arrays;

@WebServlet(name = "ServletProduct", value = "/ServletProduct")
public class ServletProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       // String datosProduct[][] = new String[5][5];
        System.out.println("zzzzzzzzzzzzzzzzzzzzzzzzzzzzz" +
                "aaaaaaaaaaaaaaaaaaaaaaaaa");
        String accion = request.getParameter("accion");

        switch (accion){
            case "primer":
                String []primer = request.getParameterValues("prmero[]");
                System.out.println("primeroooooooo"+primer.length);
                for (String s : primer) {
                    System.out.println(s);
                }

                break;

            case "seguns":
                String []seguns = request.getParameterValues("segundo[]");
                System.out.println("segunsssssss"+ seguns.length);

                for (String a : seguns) {
                    System.out.println(a);
                }

                break;
            default:
        }










    }
}
