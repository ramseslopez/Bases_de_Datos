
public class Licencia{

    private String name;
    private String number;
    private String birth;
    private String dateF;
    private String type;
    private String address;

    public Licencia() {
    }

    public Licencia(String name, String number, String birth, String dateF, String type, String address) {
        this.name = name;
        this.number = number;
        this.birth = birth;
        this.dateF = dateF;
        this.type = type;
        this.address = address;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNumber() {
        return this.number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getBirth() {
        return this.birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public String getDateF() {
        return this.dateF;
    }

    public void setDateF(String dateF) {
        this.dateF = dateF;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

}