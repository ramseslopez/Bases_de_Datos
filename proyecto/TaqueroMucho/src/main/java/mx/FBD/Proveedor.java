package mx.FBD;

public class Proveedor {
    private String rfc;
    private String nombre;

    public Proveedor(){
        rfc = nombre = "";
    }

    public Proveedor(String rfc, String nombre){
        this.rfc = rfc;
        this.nombre = nombre;
    }

    public String getRfc(){
        return rfc;
    }

    public String getNombre(){
        return nombre;
    }

    public void setRfc(String rfc){
        this.rfc = rfc;
    }

    public void setNombre(String nombre){
        this.nombre = nombre;
    }
}
