package com.img.img.cotroller;

import com.img.img.models.Customer;
import com.img.img.utils.MySqlConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class CustomerController {
    Connection cn = null;
    PreparedStatement pst = null;

    public int addCustomer(Customer cust) {
        int rs = 0;

        try {

            cn = new MySqlConnection().getConnection();
            String sql = "insert into tb_customers values(null, ?, ?)";
            pst = cn.prepareStatement(sql);

            pst.setString(1, cust.getName());
            pst.setString(2, cust.getPhoto());

            rs = pst.executeUpdate();
            cn.close();
            pst.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return rs;
    }
}
