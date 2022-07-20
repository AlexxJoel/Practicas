package dominio;

public class Alumno {
    private int num_control;
    private String nombre;
    private String ape_parteno;
    private String ape_materno;
    private String materia ;

    public Alumno(int num_control) {
        this.num_control = num_control;
    }

    public Alumno() {
    }

    public Alumno(int num_control, String nombre, String ape_parteno, String ape_materno, String materia) {
        this.num_control = num_control;
        this.nombre = nombre;
        this.ape_parteno = ape_parteno;
        this.ape_materno = ape_materno;
        this.materia = materia;
    }

    public int getNum_control() {
        return num_control;
    }

    public void setNum_control(int num_control) {
        this.num_control = num_control;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApe_parteno() {
        return ape_parteno;
    }

    public void setApe_parteno(String ape_parteno) {
        this.ape_parteno = ape_parteno;
    }

    public String getApe_materno() {
        return ape_materno;
    }

    public void setApe_materno(String ape_materno) {
        this.ape_materno = ape_materno;
    }

    public String getMateria() {
        return materia;
    }

    public void setMateria(String materia) {
        this.materia = materia;
    }

    //Salida de todo el objeto

    @Override
    public String toString() {
        return "Alumno{" +
                "num_control=" + num_control +
                ", nombre='" + nombre + '\'' +
                ", ape_parteno='" + ape_parteno + '\'' +
                ", ape_materno='" + ape_materno + '\'' +
                ", materia='" + materia + '\'' +
                '}';
    }
}
