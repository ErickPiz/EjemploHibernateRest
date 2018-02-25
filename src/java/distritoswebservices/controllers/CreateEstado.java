package distritoswebservices.controllers;

import distritoswebservices.model.DAO.EstadosDAO;
import distritoswebservices.model.POJOS.Estados;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;

/**
    Document    : CreateEstado
    Description : Clase REST para agregar un estado a la BD
    Created on  : 19/02/2018
    Author      : Erick Piz
 **/

@Path("crearEstado")
public class CreateEstado {

    @GET
    public String crearEstado(@QueryParam("txtNuevoEstado") String nuevoEstado) {
        try{
            
        if (!EstadosDAO.existEstado(nuevoEstado)) {
            EstadosDAO.createEstado(new Estados(nuevoEstado));
            return "Estado creado";
        } else {
            return "Estado ya Existe";
        }
        }catch(Exception e){
            
        }
        return "Entro";
    }
}