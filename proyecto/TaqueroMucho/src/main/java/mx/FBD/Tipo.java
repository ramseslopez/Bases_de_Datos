package mx.FBD;

public class Tipo {
    private int idTipo;
    private String nombre;

    public Tipo(){
        idTipo = 0;
        nombre = "";
    }

    public Tipo(int idTipo, String nombre){
        this.idTipo = idTipo;
        this.nombre = nombre;
    }

    public int getIdTipo(){
        return idTipo;
    }

    public String getNombre(){
        return nombre;
    }

    public void setIdTipo(int idTipo){
        this.idTipo = idTipo;
    }

    public void setNombre(String nombre){
        this.nombre = nombre;
    }
}
