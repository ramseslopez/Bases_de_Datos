package mx.FBD;

public class Mesa extends Ticket {
    private int numMesa;

    public Mesa(){
        super();
        numMesa = 0;
    }

    public Mesa(String folio, String fecha, int numMesa){
        super(folio, fecha);
        this.numMesa = numMesa;
    }

    public int getNumMesa(){
        return numMesa;
    }

    public void setNumMesa(int numMesa){
        this.numMesa = numMesa;
    }
}
