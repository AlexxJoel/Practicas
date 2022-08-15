package utez.tienda.tiendautez.products.gestion.model;

import utez.tienda.tiendautez.administrator.model.DaoAdmin;
import utez.tienda.tiendautez.category.model.CategoryDao;
import utez.tienda.tiendautez.images.model.ImagesBean;
import utez.tienda.tiendautez.images.model.ImagesDao;
import utez.tienda.tiendautez.offers.model.DaoOffer;
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

public class ProductDao {

    Connection conn;
    PreparedStatement pstm;
    ResultSet rs;

    //-----------------------------FIND ONE CATRGORY ------------------------------------------------------
    private final String QUERY_FIND_CATEGORY = "SELECT * FROM products";

    public List<ProductBean> showProducts(){
        List<ProductBean> listProducts =  new ArrayList<>();
        try {
            conn = new MySQLConnection().getConnection();

            pstm = conn.prepareStatement(QUERY_FIND_CATEGORY);
            rs = pstm.executeQuery();

            while (rs.next()){
                ProductBean product = new ProductBean();
                product.setId_products(rs.getInt("id_products"));
                product.setName(rs.getString("name"));
                product.setDescription(rs.getString("description_long"));
                product.setDescriptionLong(rs.getString("description_long"));
                product.setType(rs.getString("type"));
                product.setStatus(rs.getInt("status"));
                product.setOffers_id_offers(rs.getInt("offers_id_offers"));
                //--------------ALmacenar imagen -------------------------------------------
                byte[] image = rs.getBytes("image");
                String imageStr = Base64.getEncoder().encodeToString(image);
                product.setImageToShow(imageStr);
                //-------------------------------------------------------------------
                product.setDelete(rs.getInt("delete"));
                //--------Check ID of catrgory to search info-------------------------
                int id_category = rs.getInt("category_id_category");
                product.setCategory(new CategoryDao().findCategory(id_category)); //Guardamos el objeto de categoria
                //--------Check ID of offers to search info-------------------------
                Long id_offer = rs.getLong("offers_id_offers");
                product.setOffer(new DaoOffer().findOffer(id_offer));
                //-------------------------Check the combinations---------------------
                //Well The id is in the combinatio's table, so i should take its number
                int id_combination = rs.getInt("id_products");
                product.setCombinations(new CombinationPDDao().findCombinations(id_combination));
                //--------------Check the combinatins images-------------------}
                int id_imagesCombinatios = rs.getInt("id_products");
                product.setImagesSecondaries(new ImagesDao().findImages(id_imagesCombinatios));


                listProducts.add(product);

            }
        }catch (SQLException e){
            Logger.getLogger(DaoAdmin.class.getName()).log(Level.SEVERE, "Error en findCategory -> ", e);
        }finally {
            System.err.println("Close Product's  Conection ");
        }

        /*for (ProductBean p : listProducts) {
            System.out.println(p.toString());
            System.out.println("----------------------------Combinations------------------------------------");
            for (CombinationPDBean cp: p.getCombinations()) {
                System.out.println( cp.toString());
            }
            System.out.println("--------------------------Images Secondaries--------------------");
            for (ImagesBean ip: p.getImagesSecondaries()) {
                System.out.println(ip.toString());
            }
            System.out.println("---------------------"+p.getId_products()+"------------------------");
            System.out.println("\n \n");
        }*/
        return listProducts;
    }

    //--------------------------------------------------------------------------------------------------------




    //-----------------------------------------TEST---------------------------------

    public static void main(String[] args) {
        new ProductDao().showProducts();
    }


}
