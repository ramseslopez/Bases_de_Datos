public class ExMedico{
    
    private double peso;
    private double talla;
    private double presion;
    private String status;

    public ExMedico() {
    }

    public ExMedico(double peso, double talla, double presion, String status) {
        this.peso = peso;
        this.talla = talla;
        this.presion = presion;
        this.status = status;
    }

    public double getPeso() {
        return this.peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    public double getTalla() {
        return this.talla;
    }

    public void setTalla(double talla) {
        this.talla = talla;
    }

    public double getPresion() {
        return this.presion;
    }

    public void setPresion(double presion) {
        this.presion = presion;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public ExMedico peso(double peso) {
        this.peso = peso;
        return this;
    }

    public ExMedico talla(double talla) {
        this.talla = talla;
        return this;
    }

    public ExMedico presion(double presion) {
        this.presion = presion;
        return this;
    }

    public ExMedico status(String status) {
        this.status = status;
        return this;
    }

}