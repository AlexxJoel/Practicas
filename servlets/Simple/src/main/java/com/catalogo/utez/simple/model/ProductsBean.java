package com.catalogo.utez.simple.model;

public class ProductsBean {

    private long id_productos;
    private String nombre;
    private String tipo_producto;
    private String color;
    private String talla;
    private int cantidad;
    private double precio;
    private String descripcion;
    private String descripcion_larga;
    private String create_date;
    private long categorias_id_categoria;
    private long ofertas_id_oferta;


    public ProductsBean() {
    }

    public ProductsBean(long id_productos, String nombre, String tipo_producto, String color, String talla, int cantidad, double precio, String descripcion, String descripcion_larga, String create_date, long categorias_id_categoria, long ofertas_id_oferta) {

        this.id_productos = id_productos;
        this.nombre = nombre;
        this.tipo_producto = tipo_producto;
        this.color = color;
        this.talla = talla;
        this.cantidad = cantidad;
        this.precio = precio;
        this.descripcion = descripcion;
        this.descripcion_larga = descripcion_larga;
        this.create_date = create_date;
        this.categorias_id_categoria = categorias_id_categoria;
        this.ofertas_id_oferta = ofertas_id_oferta;
    }

    public ProductsBean( String nombre, String tipo_producto, String color, String talla, int cantidad, double precio, String descripcion, String descripcion_larga, String create_date, long categorias_id_categoria) {
        this.nombre = nombre;
        this.tipo_producto = tipo_producto;
        this.color = color;
        this.talla = talla;
        this.cantidad = cantidad;
        this.precio = precio;
        this.descripcion = descripcion;
        this.descripcion_larga = descripcion_larga;
        this.create_date = create_date;
        this.categorias_id_categoria = categorias_id_categoria;
    }

    public long getId_productos() {
        return id_productos;
    }

    public void setId_productos(long id_productos) {
        this.id_productos = id_productos;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTipo_producto() {
        return tipo_producto;
    }

    public void setTipo_producto(String tipo_producto) {
        this.tipo_producto = tipo_producto;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getTalla() {
        return talla;
    }

    public void setTalla(String talla) {
        this.talla = talla;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getDescripcion_larga() {
        return descripcion_larga;
    }

    public void setDescripcion_larga(String descripcion_larga) {
        this.descripcion_larga = descripcion_larga;
    }

    public String getCreate_date() {
        return create_date;
    }

    public void setCreate_date(String create_date) {
        this.create_date = create_date;
    }

    public long getCategorias_id_categoria() {
        return categorias_id_categoria;
    }

    public void setCategorias_id_categoria(long categorias_id_categoria) {
        this.categorias_id_categoria = categorias_id_categoria;
    }

    public long getOfertas_id_oferta() {
        return ofertas_id_oferta;
    }

    public void setOfertas_id_oferta(long ofertas_id_oferta) {
        this.ofertas_id_oferta = ofertas_id_oferta;
    }
}
