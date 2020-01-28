package mx.FBD;

public class Taqueria {
    private String calle;
    private int numero;
    private String colonia;
    private String alcaldia;
    private String cp;
    private int telefono;
    private String rfc;

    public Taqueria(){
        calle = colonia = alcaldia = cp = rfc = "";
        numero = telefono = 0;
    }

    public Taqueria(String calle, int numero, String colonia, String alcaldia, String cp, int telefono, String rfc){
        this.calle = calle;
        this.numero = numero;
        this.colonia = colonia;
        this.alcaldia = alcaldia;
        this.cp = cp;
        this.telefono = telefono;
        this.rfc = rfc;
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

    public int getTelefono(){
        return telefono;
    }

    public String getRfc(){
        return rfc;
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

    public void setTelefono(int numero){
        this.numero = numero;
    }

    public void setRfc(String rfc){
        this.rfc = rfc;
    }
}
