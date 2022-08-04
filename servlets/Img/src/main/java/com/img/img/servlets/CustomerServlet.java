package com.img.img.servlets;

import com.img.img.cotroller.CustomerController;
import com.img.img.models.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@MultipartConfig //Para archivos
@WebServlet(name = "CustomerServlet", value = "/CustomerServlet")
public class CustomerServlet extends HttpServlet {
    private CustomerController cust = new CustomerController();
    private String pathImg = "C:\\Users\\joelh\\Documents\\Git\\Practicas\\servlets\\Img\\src\\main\\webapp\\files\\";
    private File uploasd = new File(pathImg);
   private String[] extens = {".ico", ".png", ".jpg", ".jpeg"};
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        try {

            String name = req.getParameter("name");
            Part part = req.getPart("file"); //Recibimos la imagen

            if(part == null) {
                System.out.println("No ha seleccionado un archivo");
                return;
            }

            if(isExtension(part.getSubmittedFileName(), extens)) {
                String photo = saveFile(part, uploasd); //Parametros -> la imagen y el destino
                Customer custo = new Customer(name, photo);
                cust.addCustomer(custo);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        res.sendRedirect("/UploadImageJava/index.jsp");

    }

    //......................
    private  String saveFile(Part part,File pathImg){
        String pathAbosoul = "";

        try {
            Path path  = Paths.get(part.getSubmittedFileName());
            String filename = path.getFileName().toString();
            InputStream input = part.getInputStream();
            if (input!=null){
                File file = new File(pathImg,filename);
                pathAbosoul = file.getAbsolutePath();
                Files.copy(input,file.toPath());
            }
        }catch (Exception e){
            System.out.println(e);
        }
        return pathAbosoul;
    }

    private boolean isExtension(String fileName, String[] extensions) {
        for(String et : extensions) {
            if(fileName.toLowerCase().endsWith(et)) {
                return true;
            }
        }

        return false;
    }
}
