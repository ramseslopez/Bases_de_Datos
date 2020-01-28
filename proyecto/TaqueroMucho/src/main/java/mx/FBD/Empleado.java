package mx.FBD;

public class Empleado {
    protected String nombre;
    protected String paterno;
    protected String materno;
    protected String curp;
    protected String calle;
    protected int numero;
    protected String colonia;
    protected String alcaldia;
    protected String cp;
    protected String nacimiento;
    protected String tipoSangre;

    public Empleado(){
        nombre = paterno = materno = curp = calle = colonia = alcaldia = cp = nacimiento = tipoSangre = "";
        numero = 0;
    }

    public Empleado(String nombre, String paterno, String materno, String curp, String calle, int numero, String colonia, String alcaldia, String cp, String nacimiento, String tipoSangre){
        this.nombre = nombre;
        this.paterno = paterno;
        this.materno = materno;
        this.curp = curp;
        this.calle = calle;
        this.numero = numero;
        this.colonia = colonia;
        this.alcaldia = alcaldia;
        this.cp = cp;
        this.nacimiento = nacimiento;
        this.tipoSangre = tipoSangre;
    }

    public String getNombre(){
        return nombre;
    }

    public String getPaterno(){
        return paterno;
    }

    public String getMaterno(){
        return materno;
    }

    public String getCurp(){
        return curp;
    }

    public String getCalle(){
        return calle;
    }

    public int getNumero(){
        return numero;
    }

    public String getColonia(){
        return colonia;
    }

    public String getAlcaldia(){
        return alcaldia;
    }

    public String getCp(){
        return cp;
    }

    public String getNacimiento(){
        return nacimiento;
    }

    public String getTipoSangre(){
        return tipoSangre;
    }

    public void setNombre(String nombre){
        this.nombre = nombre;
    }

    public void setPaterno(String paterno){
        this.paterno = paterno;
    }

    public void setMaterno(String materno){
        this.materno = materno;
    }

    public void setCurp(String curp){
        this.curp = curp;
    }

    public void setCalle(String calle){
        this.calle = calle;
    }

    public void setNumero(int numero){
        this.numero = numero;
    }

    public void setColonia(String colonia){
        this.colonia = colonia;
    }

    public void setAlcaldia(String alcaldia){
        this.alcaldia = alcaldia;
    }

    public void setCp(String cp){
        this.cp = cp;
    }

    public void setNacimiento(String nacimiento){
        this.nacimiento = nacimiento;
    }

    public void setTipoSangre(String tipoSangre){
        this.tipoSangre = tipoSangre;
    }
}
