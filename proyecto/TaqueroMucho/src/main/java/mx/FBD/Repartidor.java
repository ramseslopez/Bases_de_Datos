package mx.FBD;

public class Repartidor extends Empleado {
    protected String licencia;

    public Repartidor(String nombre, String paterno, String materno, String curp, String calle, int numero, String colonia, String alcaldia, String cp, String nacimiento, String tipoSangre, String licencia){
        super(nombre, paterno, materno, curp, calle, numero, colonia, alcaldia, cp, nacimiento, tipoSangre);
        this.licencia = licencia;
    }

    public String getLicencia(){
        return licencia;
    }

    public void setLicencia(String licencia){
        this.licencia = licencia;
    }
}
