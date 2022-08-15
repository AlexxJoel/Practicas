package utez.tienda.tiendautez.category.model;

import utez.tienda.tiendautez.administrator.model.DaoAdmin;
import utez.tienda.tiendautez.utils.MySQLConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CategoryDao {
    Connection conn;
    PreparedStatement pstm;
    ResultSet rs;

   //-----------------------------FIND ONE CATRGORY ------------------------------------------------------
    private final String QUERY_FIND_CATEGORY = "SELECT * FROM categories WHERE id_category = ?  ";

    public CategoryBean findCategory(int id_category){
        CategoryBean category = null;
        try {
            conn = new MySQLConnection().getConnection();

            pstm = conn.prepareStatement(QUERY_FIND_CATEGORY);
            pstm.setInt(1,id_category);
            rs = pstm.executeQuery();
            if (rs.next()){
                category = new CategoryBean(rs.getInt("id_category"), rs.getString("name"));
            }
        }catch (SQLException e){
            Logger.getLogger(DaoAdmin.class.getName()).log(Level.SEVERE, "Error en findCategory -> ", e);
        }finally {
            System.err.println("Close Category's  Conection ");
        }
       //System.out.println(category.toString());
        return category;
    }

    //--------------------------------------------------------------------------------------------------------


    //-----------------------------------------TEST---------------------------------

    public static void main(String[] args) {
        new CategoryDao().findCategory(1);
    }
}
