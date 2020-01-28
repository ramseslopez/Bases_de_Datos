package mx.FBD;

public class ClienteCorazon extends Cliente {
    private int puntos;

    public ClienteCorazon(){
        super();
        puntos = 0;
    }

    public ClienteCorazon(String nombre, String paterno, String materno, int idCliente, int puntos){
        super(nombre, paterno, materno, idCliente);
        this.puntos = puntos;
    }

    public int getPuntos() {
        return puntos;
    }

    public void setPuntos(int puntos) {
        this.puntos = puntos;
    }
}
