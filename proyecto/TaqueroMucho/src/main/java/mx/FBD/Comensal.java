package mx.FBD;

public class Comensal extends Ticket {
    private String nombreCom;

    public Comensal(){
        super();
    }

    public Comensal(String folio, String fecha, String nombreCom){
        super(folio, fecha);
        this.nombreCom = nombreCom;
    }

    public String getNombreCom(){
        return nombreCom;
    }

    public void setNombreCom(String nombreCom){
        this.nombreCom = nombreCom;
    }
}
