package datos;

import org.apache.commons.dbcp2.BasicDataSource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Conexion {
    private static final String JDBC_URL = "jdbc:Mysql://localhost/java";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "alejandro";
    private static BasicDataSource dataSource;

    public static DataSource getDataSource(){
        if (dataSource==null){
            dataSource= new BasicDataSource();
            dataSource.setUrl(JDBC_URL);
            dataSource.setUsername(JDBC_USER);
            dataSource.setPassword(JDBC_PASSWORD);
            dataSource.setInitialSize(50);
        }
        return dataSource;
    }

    public static Connection getConection() throws SQLException {
        return getDataSource().getConnection();
    }

    public static void Close(ResultSet rs){
        try {
            rs.close();
        }catch (Exception e){
            e.printStackTrace(System.out);
        }
    }
}
