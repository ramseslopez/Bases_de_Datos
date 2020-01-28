package mx.FBD;

public class Transporte extends Repartidor{
    private boolean tieneMoto;
    private boolean tieneBici;

    public Transporte(String nombre, String paterno, String materno, String curp, String calle, int numero, String colonia, String alcaldia, String cp, String nacimiento, String tipoSangre, String licencia, boolean tieneMoto, boolean tieneBici){
        super(nombre, paterno, materno, curp, calle, numero, colonia, alcaldia, cp, nacimiento, tipoSangre, licencia);
        this.tieneMoto = tieneMoto;
        this.tieneBici = tieneBici;
    }
}
