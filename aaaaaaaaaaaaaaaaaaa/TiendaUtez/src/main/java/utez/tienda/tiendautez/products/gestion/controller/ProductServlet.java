package utez.tienda.tiendautez.products.gestion.controller;

import utez.tienda.tiendautez.products.gestion.model.ProductBean;
import utez.tienda.tiendautez.products.gestion.model.ProductDao;
import utez.tienda.tiendautez.service.ServiceAdmin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import java.util.logging.Logger;

@WebServlet(name = "ProductServlet", value = "/ProductServlet")
public class ProductServlet extends HttpServlet {

    Logger logger = Logger.getLogger("ProductServlet");


    String urlRedirect = "getProducts" ;


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String accion = req.getParameter("accion");

        switch (accion){
            case "getProducts":
                List<ProductBean> listProducts = new ProductDao().showProducts();
                System.out.println(listProducts.size());
                req.setAttribute("productos",listProducts);
                urlRedirect = "WEB-INF/products/indexProducts.jsp";
                break;

            case "createProducts":
                urlRedirect = "WEB-INF/products/createProduct.jsp";
                break;
            default:

        }


        req.getRequestDispatcher(urlRedirect).forward(req,res);



    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

    }
}
