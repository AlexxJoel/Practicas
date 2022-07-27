package com.tienda.tienda.service;

import com.tienda.tienda.model.BeanPerson;
import com.tienda.tienda.model.DaoPerson;
import com.tienda.tienda.utils.ResultAction;


import java.util.List;

public class ServicePerson {
    DaoPerson daoPerson = new DaoPerson();

    public List<BeanPerson> showPersons()  {
        return daoPerson.showPersons();
    }

    public ResultAction savePerson(BeanPerson person){
        ResultAction result = new ResultAction();
        if (daoPerson.savePerson(person)){
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

    public  BeanPerson findPerson(int id){
        return  daoPerson.findPerson(id);
    }


    public ResultAction upadatePerson(BeanPerson person){
        ResultAction result = new ResultAction();
        if (daoPerson.upadatePerson(person)){
            result.setResult(true);
            result.setMessage("Persona actualizada");
            result.setStatus(200);

        }else {
            result.setResult(false);
            result.setMessage("No Actualizo");
            result.setStatus(400);

        }
        return  result;
    }

    public static void main(String[] args) {
        ServicePerson nc = new ServicePerson();
        /*
        List<BeanPerson> listarPersons = nc.showPersons();
        for (BeanPerson listarPerson : listarPersons) {
            System.out.println(listarPerson.getLastName());
        }*/

        BeanPerson person = new BeanPerson();
        /*person.setName("Joel");
        person.setLastName("Herrera");
        person.setAge(30);
        person.setPhone("8727753");
        person.setEmail("kakkaqq@proveedor");

        ResultAction eso = nc.savePerson(person);
        System.out.println(eso);*/
        BeanPerson daa = nc.findPerson(1);
        System.out.println(daa.getName()+" "+daa.getAge());
    }

}
