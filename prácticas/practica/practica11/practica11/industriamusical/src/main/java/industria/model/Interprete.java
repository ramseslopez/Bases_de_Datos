package industria.model;

public class Interprete{

    private int num_ref;
    private String album;
    private String genero;
    private String fecha_l;
    private String disquera;
    private String pais_disquera;
    private String nombre_int;
    private String fecha_creacion;
    private String pais;

    public Interprete(){}

    public Interprete(int ref, String al, String ge, String fe, String dis, String padis, String nomint, String fecre, String pa){
        num_ref = ref;
        album = al;
        genero = ge;
        fecha_l = fe;
        disquera = dis;
        pais_disquera = padis;
        nombre_int = nomint;
        fecha_creacion = fecre;
        pais = pa;
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

    public void setFecha_Creacion(String fecre){
        fecha_creacion = fecre;
    }

    public void setPais(String pa){
      pais = pa;
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

    public String getFecha_Creacion(){
        return fecha_creacion;
    }

    public String getPais(){
        return pais;
    }
}
