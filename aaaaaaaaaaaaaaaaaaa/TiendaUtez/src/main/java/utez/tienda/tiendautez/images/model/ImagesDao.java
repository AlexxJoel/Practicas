package utez.tienda.tiendautez.images.model;

import utez.tienda.tiendautez.administrator.model.DaoAdmin;
import utez.tienda.tiendautez.images.model.ImagesBean;
import utez.tienda.tiendautez.utils.MySQLConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ImagesDao {

    Connection conn;
    PreparedStatement pstm;
    ResultSet rs;

    //-----------------------------FIND ONE CATRGORY ------------------------------------------------------
    private final String QUERY_FIND_CATEGORY = "SELECT * FROM images WHERE products_id_products = ?  ";

    public List<ImagesBean> findImages(int products_id_products){
        List<ImagesBean> listImages = new ArrayList<>();

        try {
            conn = new MySQLConnection().getConnection();

            pstm = conn.prepareStatement(QUERY_FIND_CATEGORY);
            pstm.setInt(1,products_id_products);
            rs = pstm.executeQuery();

            while (rs.next()){

                byte[] image = rs.getBytes("image");
                String imageStr = Base64.getEncoder().encodeToString(image);

                ImagesBean images = new ImagesBean(rs.getInt("id_image"),imageStr,rs.getInt("products_id_products") );
                listImages.add(images);

            }
        }catch (SQLException e){
            Logger.getLogger(DaoAdmin.class.getName()).log(Level.SEVERE, "Error en findCategory -> ", e);
        }finally {
            System.err.println("Close Images's  Conection ");
        }


        /*for (ImagesBean images : listImages) {
            System.out.println(images.toString());
        }*/

        return listImages;
    }

    //--------------------------------------------------------------------------------------------------------



    //-----------------------------------------TEST---------------------------------

    public static void main(String[] args) {
        new  ImagesDao().findImages(1);
    }
}
