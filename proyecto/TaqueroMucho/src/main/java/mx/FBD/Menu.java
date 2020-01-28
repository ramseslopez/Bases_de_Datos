package mx.FBD;

public class Menu {
    private int idMenu;

    public Menu(){
        idMenu = 0;
    }

    public Menu(int idMenu){
        this.idMenu = idMenu;
    }

    public int getIdMenu(){
        return idMenu;
    }

    public void setIdMenu(int idMenu){
        this.idMenu = idMenu;
    }
}
