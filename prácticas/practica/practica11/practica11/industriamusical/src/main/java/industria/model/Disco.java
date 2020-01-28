package industria.model;

public class Disco{

    private int num_ref;
    private String album;
    private String genero;
    private String fecha_l;
    private String disquera;
    private String pais_disquera;
    private String nombre_int;

    public Disco(){}

    public Disco(int ref, String al, String ge, String fe, String dis, String padis, String nomint){
        num_ref = ref;
        album = al;
        genero = ge;
        fecha_l = fe;
        disquera = dis;
        pais_disquera = padis;
        nombre_int = nomint;
    }

    public void setNum_ref(int ref){
        num_ref = ref;
    }

    public void setAlbum(String al){
        album = al;
    }

    public void setGenero(String gen){
        genero = gen;
    }

    public void setFecha_l(String fe){
        fecha_l = fe;
    }

    public void setDisquera(String dis){
        disquera = disquera;
    }

    public void setPais_disquera(String padis){
        pais_disquera = padis;
    }

    public void setNombre_int(String nomint){
        nombre_int = nomint;
    }

    public int getNum_ref(){
        return num_ref;
    }

    public String getAlbum(){
        return album;
    }

    public String getGenero(){
        return genero;
    }

    public String getFecha_l(){
        return fecha_l;
    }

    public String getDisquera(){
        return disquera;
    }

    public String getPais_disquera(){
        return pais_disquera;
    }

    public String getNombre_int(){
        return nombre_int;
    }
}
