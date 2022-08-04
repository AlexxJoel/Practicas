package com.img.img.utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class MySqlConnection {
    private Connection con;
    String url = "jdbc:mysql://localhost:3306/customers";
    String user = "root"; // Tu username
    String pass = "alejandro"; // Tu password

    public Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, user, pass);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }

    public static void main(String[] args) {
      MySqlConnection n = new MySqlConnection();
        Connection aaa= n.getConnection();

        if (aaa!=null){
            System.out.println("jala");
        }
    }
}
