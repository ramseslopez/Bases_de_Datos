package mx.FBD;

public class Inventario {
    private int idInventario;
    private int cantidad;
    private String fechaCompra;
    private int precioCompra;

    public Inventario(){
        idInventario = cantidad = precioCompra = 0;
        fechaCompra = "";
    }

    public Inventario(int idInventario, int cantidad, String fechaCompra, int precioCompra){
        this.idInventario = idInventario;
        this.cantidad = cantidad;
        this.fechaCompra = fechaCompra;
        this.precioCompra = precioCompra;
    }

    public int getIdInventario(){
        return idInventario;
    }

    public int getCantidad(){
        return cantidad;
    }

    public String getFechaCompra(){
        return fechaCompra;
    }

    public int getPrecioCompra(){
        return precioCompra;
    }

    public void setIdInventario(int idInventario){
        this.idInventario = idInventario;
    }

    public void setCantidad(int cantidad){
        this.cantidad = cantidad;
    }

    public void setFechaCompra(String fechaCompra){
        this.fechaCompra = fechaCompra;
    }

    public void setPrecioCompra(int precioCompra){
        this.precioCompra = precioCompra;
    }
}
