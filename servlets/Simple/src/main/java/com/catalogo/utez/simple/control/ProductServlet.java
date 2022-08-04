package com.catalogo.utez.simple.control;

import com.catalogo.utez.simple.model.ProductDao;
import com.catalogo.utez.simple.model.ProductsBean;
import com.catalogo.utez.simple.service.ServiceProduct;
import com.catalogo.utez.simple.utils.ResultAction;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ProductServlet",  urlPatterns = {
        "/seeProducts",
        "/saveProduct",
        "/createProduct",
        "/getProduct",
        "/updateProduct",
        "/deleteProduct"
})
public class ProductServlet extends HttpServlet {
    String accion=null;
    String urlRedirect = "/index.jsp";
    ServiceProduct serviceProduct = new ServiceProduct();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        accion = request.getServletPath(); //getPersons

        switch (accion){
            case "/createProduct":
                urlRedirect = "/WEB-INF/view/insertProduct.jsp";
                break;
            case "/seeProducts":
                urlRedirect = "/WEB-INF/view/seeProducts.jsp";
                break;
            default:
                System.out.println("jooooooooel");
        }

        request.getRequestDispatcher(urlRedirect).forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        accion = request.getServletPath(); //getPersons

        switch (accion){
            case  "/saveProduct":

                String nombre = request.getParameter("nombreProducto");
                String tipo_producto =request.getParameter("tipoProducto");
                String color=request.getParameter("colorSimple");
                String talla=request.getParameter("talla");
                int cantidad= Integer.parseInt(request.getParameter("cantidadSimple"));
                double precio= Integer.parseInt( request.getParameter("precioSimple"));
                String descripcion = request.getParameter("descripcionCorta");
                String descripcion_larga=request.getParameter("descLarga");
                String create_date= "2022-07-13";
                long categorias_id_categoria = Long.parseLong(request.getParameter("categoria"));


                ProductsBean person = new ProductsBean( nombre, tipo_producto, color, talla, cantidad, precio, descripcion, descripcion_larga, "2022-07-13", categorias_id_categoria);

                ResultAction result = serviceProduct.insertSql(person);

                urlRedirect = "/WEB-INF/view/seeProducts.jsp?result="+result.isResult()+"&message="+result.getMessage()+"&status="+result.getStatus();

               break;
            default:

                request.getRequestDispatcher(urlRedirect).forward(request,response);
        }

        request.getRequestDispatcher(urlRedirect).forward(request,response);




    }
}
