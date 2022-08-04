package com.catalogo.utez.simple.service;

import com.catalogo.utez.simple.model.ProductDao;
import com.catalogo.utez.simple.model.ProductsBean;
import com.catalogo.utez.simple.utils.ResultAction;

public class ServiceProduct {
    ProductDao productDao = new ProductDao();

    public ResultAction insertSql(ProductsBean product){
        ResultAction result = new ResultAction();
        if (productDao.insertSql(product)){
            result.setResult(true);
            result.setMessage("Persona registrada");
            result.setStatus(200);

        }else {
            result.setResult(false);
            result.setMessage("No registro");
            result.setStatus(400);

        }
        return  result;
    }

}
