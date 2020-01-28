package mx.FBD;

public class Producto {
    private int idProducto;
    private String fechaCaducidad;
    private String tipo;
    private String marca;

    public Producto(){
        idProducto = 0;
        fechaCaducidad = tipo = marca = "";
    }

    public Producto(int idProducto, String fechaCaducidad, String tipo, String marca){
        this.idProducto = idProducto;
        this.fechaCaducidad = fechaCaducidad;
        this.tipo = tipo;
        this.marca = marca;
    }

    public int getIdProducto(){
        return idProducto;
    }

    public String getFechaCaducidad(){
        return fechaCaducidad;
    }

    public String getTipo(){
        return tipo;
    }

    public String getMarca(){
        return marca;
    }

    public void setIdProducto(int idProducto){
        this.idProducto = idProducto;
    }

    public void setFechaCaducidad(String fechaCaducidad){
        this.fechaCaducidad = fechaCaducidad;
    }

    public void setTipo(String tipo){
        this.tipo = tipo;
    }

    public void setMarca(String marca){
        this.marca = marca;
    }
}
