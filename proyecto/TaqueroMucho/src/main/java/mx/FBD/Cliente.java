package mx.FBD;

public class Cliente {
    protected String nombre;
    protected String paterno;
    protected String materno;
    protected int idCliente;

    public Cliente(){
        nombre = paterno = materno = "";
        idCliente = 0;
    }

    public Cliente(String nombre, String paterno, String materno, int idCliente){
        this.nombre = nombre;
        this.paterno = paterno;
        this.materno = materno;
        this.idCliente = idCliente;
    }

    public String getNombre() {
        return nombre;
    }

    public String getMaterno() {
        return materno;
    }

    public String getPaterno() {
        return paterno;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public void setMaterno(String materno) {
        this.materno = materno;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setPaterno(String paterno) {
        this.paterno = paterno;
    }
}