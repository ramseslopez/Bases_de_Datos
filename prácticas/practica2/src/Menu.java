public class Menu{
    private String[] opciones;

    /**
     *Constructor  de un menu con opciones. 
     */
    public Menu(String[] opciones){
        this.opciones = opciones;
    }

    /**
     *Método toString que imprime el menu.
     */
    public String toString(){
        String s = "\n";
        for(int i = 0; i < opciones.length; i++){
            s += (i+1) + ". " + opciones[i] + "\n";
        }
        return s;
    }
}