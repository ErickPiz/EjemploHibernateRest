package distritoswebservices.controllers;

import distritoswebservices.model.DAO.DistritosDAO;
import distritoswebservices.model.DAO.EstadosDAO;
import distritoswebservices.model.POJOS.Distritos;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;

/**
    Document    : CreateDistrito
    Description : Clase REST para agregar un distrito a la
    Created on  : 19/02/2018
    Author      : Erick Piz
 */
@Path("crearDistrito")
public class CreateDistrito{
    @GET
    public String crearDistrito(@QueryParam("txtIdEstado") int estado,@QueryParam("txtIdDistrito") int idDistrito,@QueryParam("txtDistrito") String distrito,@QueryParam("txtCasillas") int Casillas){
        DistritosDAO.createDistrito(new Distritos(EstadosDAO.loadEstado(estado), idDistrito, distrito, Casillas));
        return "Distrito Creado";
    }

}
