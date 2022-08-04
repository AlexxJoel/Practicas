package com.catalogo.utez.simple.model;

import com.catalogo.utez.simple.utils.Conexion;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ProductDao {

    Connection conn;
    PreparedStatement pstm;
    ResultSet rs;



    private  final String SQL_INSERT = "INSERT INTO productos ( nombre, tipo_producto, color, talla, cantidad, precio, descripcion, descripcion_larga, create_date, categorias_id_categoria) VALUES ( ?, ?, ?, ?,?, ?, ?, ?, ?, ?)";


    public boolean insertSql(ProductsBean product){

        try{
            conn = new Conexion().getConexion(); //aqui se manda a abrir la conexion
            pstm = conn.prepareStatement(SQL_INSERT);//aqui se le dice que empiece a preparar esa consulta o el query aqui preparo la sentencia

            pstm.setString(1,product.getNombre());
            pstm.setString(2,product.getTipo_producto());
            pstm.setString(3,product.getColor());
            pstm.setString(4,product.getTalla());
            pstm.setInt(5,product.getCantidad());
            pstm.setDouble(6,product.getPrecio());
            pstm.setString(7,product.getDescripcion());
            pstm.setString(8,product.getDescripcion_larga());
            pstm.setString(9,product.getCreate_date());
            pstm.setLong(10,product.getCategorias_id_categoria());
            return pstm.executeUpdate()==1; //si es correcta devuelve un 1 y si no un 0

        }catch (SQLException e){
            Logger.getLogger(ProductsBean.class.getName())
                    .log(Level.SEVERE, "Error en insertSQl -> " + e); //anuncios que me dicen lo que esta pasando en la consola
        }finally { //aqui se cierran las conexiones
            closeConnections();//aqui se manda a traer el metodo para cerrar las conexiones
        }
       return false;
    }


    public void closeConnections(){
        System.out.println("cerra conex");
    }




    public static void main(String[] args) {

        ProductDao product = new ProductDao();

        ProductsBean person = new ProductsBean( "joel", "simple", "rojoooo", "unica", 20, 0929.30, "aaaaaaaa  sexy", "cometeloooooooooo negroe", "2022-07-13", 1);

        boolean lol = product.insertSql(person);
        if (lol){
            System.out.println("jaloo");
        }else {
            System.out.println("aaaaaaaa noooooo");
        }

    }

}
