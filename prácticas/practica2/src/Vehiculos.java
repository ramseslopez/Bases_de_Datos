/**
 * Clase para simular a los vehiculos
 * de la CDMX
 * @version septiembre 2019
 */

 public class Vehiculos{

   public String id;
   public String date;
   public String sim;
   public boolean available;
   public String fuel;
   public int capacity;


   public Vehiculos(){
     id = "";
     date = "";
     available = false;
     fuel = "";
     capacity = 0;
     sim = "";
   }

   public Vehiculos(String newID, String newSIM, String newFecha, String com, int cap, boolean dis){
     id = newID;
     date = newFecha;
     sim = newSIM;
     available = dis;
     fuel = com;
     capacity = cap;
   }

   public String getID(){
     return id;
   }

   public void  setID(String newID){
     id = newID;
   }

   public String getDate(){
     return date;
   }

   public void setDate(String newDate){
     date = newDate;
   }

   public boolean getAvailability(){
     return available;
   }

   public void setAvailability(boolean av){
     available = av;
   }

   public String getFuel(){
     return fuel;
   }

   public void setFuel(String c){
     fuel = c;
   }

   public String getSIM(){
     return sim;
   }

   public void setSIM(String newSIM){
     sim = newSIM;
   }

   public int getCapacity(){
     return capacity;
   }

   public void setCapacity(int cap){
     capacity = cap;
   }

   public String [] data(){
     String in = Integer.toString(getCapacity());
     String d = getFuel();
     String b = Boolean.toString(getAvailability());

     String [] data = { getID(), getSIM(), getDate(), d,
                        in , b };
    return data;
   }

 }
