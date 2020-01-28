package mx.FBD;

public class Ticket {
    protected String folio;
    protected String fecha;

    public Ticket(){
        folio = fecha = "";
    }

    public Ticket(String folio, String fecha){
        this.folio = folio;
        this.fecha = fecha;
    }

    public String getFolio(){
        return folio;
    }

    public String getFecha(){
        return fecha;
    }

    public void setFolio(String folio){
        this.folio = folio;
    }

    public void setFecha(String fecha){
        this.fecha = fecha;
    }
}
