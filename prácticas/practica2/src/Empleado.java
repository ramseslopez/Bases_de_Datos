    public class Empleado{

      private String name;
      private String birth;
      private String address;
      private String genre;
      private String study;
      private Licencia ld;
      private String schedule;
      private ExMedico mcd;

  public Empleado() {
  }

  public Empleado(String name, String birth, String address, String genre, String study, Licencia ld, String schedule, ExMedico mcd) {
    this.name = name;
    this.birth = birth;
    this.address = address;
    this.genre = genre;
    this.study = study;
    this.ld = ld;
    this.schedule = schedule;
    this.mcd = mcd;
  }

  public Empleado(String name, String birth, String address, String genre, String study, String schedule) {
    this.name = name;
    this.birth = birth;
    this.address = address;
    this.genre = genre;
    this.study = study;
    this.schedule = schedule;
  }

  public String getName() {
    return this.name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getBirth() {
    return this.birth;
  }

  public void setBirth(String birth) {
    this.birth = birth;
  }

  public String getAddress() {
    return this.address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  public String getGenre() {
    return this.genre;
  }

  public void setGenre(String genre) {
    this.genre = genre;
  }

  public String getStudy() {
    return this.study;
  }

  public void setStudy(String study) {
    this.study = study;
  }

  public Licencia getLd() {
    return this.ld;
  }

  public void setLd(Licencia ld) {
    this.ld = ld;
  }

  public String getSchedule() {
    return this.schedule;
  }

  public void setSchedule(String schedule) {
    this.schedule = schedule;
  }

  public ExMedico getMcd() {
    return this.mcd;
  }

  public void setMcd(ExMedico mcd) {
    this.mcd = mcd;
  }

  public String[] data(){
    String [] datos = {getName(),getBirth(), getAddress(),getGenre(),
                       getStudy(), getSchedule()};
    return datos;
  }

}

