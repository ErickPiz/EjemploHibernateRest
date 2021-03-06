package distritoswebservices.model.POJOS;
// Generated 19/02/2018 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Estados generated by hbm2java
 */
public class Estados  implements java.io.Serializable {


     private Integer idEstado;
     private String estado;
     private Set distritoses = new HashSet(0);

    public Estados() {
    }

	
    public Estados(String estado) {
        this.estado = estado;
    }
    public Estados(String estado, Set distritoses) {
       this.estado = estado;
       this.distritoses = distritoses;
    }
   
    public Integer getIdEstado() {
        return this.idEstado;
    }
    
    public void setIdEstado(Integer idEstado) {
        this.idEstado = idEstado;
    }
    public String getEstado() {
        return this.estado;
    }
    
    public void setEstado(String estado) {
        this.estado = estado;
    }
    public Set getDistritoses() {
        return this.distritoses;
    }
    
    public void setDistritoses(Set distritoses) {
        this.distritoses = distritoses;
    }
}


