package com.tienda.tienda.model;

import com.tienda.tienda.utils.ConexionMysql;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DaoPerson {
    Connection conn;
    PreparedStatement pstm;
    ResultSet rs;

    final String GET_PERSONS = "SELECT * FROM person";
    final String INSERT_PERSONS = "INSERT INTO person (name,last_name,age,email,phone) VALUES (?,?,?,?,?)";
    final String FIND_PERSON =  "SELECT * FROM person WHERE id=?";

    final String UPDATE_PERSONS = "UPDATE person SET name=?,last_name=?,age=?,email=?,phone=? WHERE id=?";



    public List<BeanPerson> showPersons()  {
        List<BeanPerson> persons = new ArrayList<>();

        try{
            conn = new ConexionMysql().getConexion();
            pstm = conn.prepareStatement(GET_PERSONS);
            rs = pstm.executeQuery();

            while (rs.next()){
                BeanPerson  person = new BeanPerson();
               person.setId(rs.getInt("id"));
               person.setName(rs.getString("name"));
               person.setLastName(rs.getString("last_name"));
               person.setAge(rs.getInt("age"));
               person.setEmail(rs.getString("email"));
               person.setPhone(rs.getString("phone"));
               persons.add(person);
            }


        }catch (Exception e){
            System.out.println(e);
        }

        return persons;
    }


    public  boolean savePerson(BeanPerson person){
        boolean result;
        try{
            conn = new ConexionMysql().getConexion();
            pstm = conn.prepareStatement(INSERT_PERSONS);
            pstm.setString(1, person.getName());
            pstm.setString(2, person.getLastName());
            pstm.setInt(3, person.getAge());
            pstm.setString(4, person.getEmail());
            pstm.setString(5, person.getPhone());
             result = pstm.executeUpdate()==1;

            return result;
        }catch (Exception e){
            System.out.println(e);
        }
        return false;
    }

    public BeanPerson findPerson(int id){
        BeanPerson person=null;
        try {
            conn = new ConexionMysql().getConexion();
            pstm = conn.prepareStatement(FIND_PERSON);
            pstm.setInt(1,id);
            rs=pstm.executeQuery();

            while (rs.next()){
                person = new BeanPerson();
                person.setId(rs.getInt("id"));
                person.setName(rs.getString("name"));
                person.setLastName(rs.getString("last_name"));
                person.setAge(rs.getInt("age"));
                person.setEmail(rs.getString("email"));
                person.setPhone(rs.getString("phone"));
            }


        }catch (Exception e){
            System.out.println(e);
        }
        return person;
    }

    public boolean upadatePerson(BeanPerson person) {
        boolean result;
        try{
            conn = new ConexionMysql().getConexion();
            pstm = conn.prepareStatement(UPDATE_PERSONS);
            pstm.setString(1, person.getName());
            pstm.setString(2, person.getLastName());
            pstm.setInt(3, person.getAge());
            pstm.setString(4, person.getEmail());
            pstm.setString(5, person.getPhone());
            pstm.setInt(6, person.getId());
            result = pstm.executeUpdate()==1;

            return result;
        }catch (Exception e){
            System.out.println(e);
        }
        return false;
    }


    public static void main(String[] args) throws SQLException {
        DaoPerson doa = new DaoPerson();
       /*
        List<BeanPerson> bena = doa.showPersons();
        for(int i=0; i<bena.size();i++){
            System.out.println(bena.get(i).getPhone());
        }*/
        BeanPerson person = new BeanPerson();
        person.setName("Joel");
        person.setLastName("Herrera");
        person.setAge(30);
        person.setPhone("8727753");
        person.setEmail("kakkaqq@proveedor");
        person.setId(5);

        boolean eso = doa.upadatePerson(person);
        System.out.println(eso);

        /*BeanPerson daa = doa.findPerson(1);
        System.out.println(daa.getName() + " " + daa.getAge());
        */
    }


    }


