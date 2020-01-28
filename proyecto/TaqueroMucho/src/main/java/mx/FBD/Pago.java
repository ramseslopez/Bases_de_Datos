package mx.FBD;

public class Pago {
    private int idPago;

    public Pago(){
        idPago = 0;
    }

    public Pago(int idPago){
        this.idPago = idPago;
    }

    public int getIdPago(){
        return idPago;
    }

    public void setIdPago(int idPago){
        this.idPago = idPago;
    }
}
