package datos;

import dominio.Alumno;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AlumnoDaoJDBC {
    private static final String SQL_SELECT= "SELECT num_control, nombre , ape_prteno,ape_materno, materia from alumno";

    public List<Alumno> listar(){
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Alumno alumno = null;
        List<Alumno> alumnos = new ArrayList<Alumno>();
        try {
            conn = Conexion.getConection();
            stmt = conn.prepareStatement(SQL_SELECT);
            rs = stmt.executeQuery();
            while (rs.next()){
                int numControl = rs.getInt(1);
                String nombre = rs.getString(2);
                String paterno = rs.getString(3);
                String materno = rs.getString(4);
                String materia = rs.getString(5);

                System.out.println(numControl+" "+nombre);

                alumnos.add(new Alumno(numControl,nombre,paterno,materno,materia));
            }

        }catch (Exception e){
            System.out.println(e);
        }finally {
            Conexion.Close(rs);
        }

        return alumnos;
    }

    public static void main(String[] args) {
        AlumnoDaoJDBC a = new AlumnoDaoJDBC();
    a.listar();
    }

}
