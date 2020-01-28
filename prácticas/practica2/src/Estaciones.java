/**
 * Clase para simular las estaciones
 * de la CdMX
 * @version septiembre 2019
 */

public class Estaciones{
	
 public String nombre; 
 public String direccion;
 public String linea; 
 public String tipo; 
 public String horario;
 public String disponible;
 public String acces; 
 public String tempEspera;

 public Estaciones(){
   nombre = "";
   direccion = "";
   linea = "" ;
   tipo = "" ;
   horario = "";
   disponible = "";
   acces = "" ;
   tempEspera = "";
 }

 public Estaciones(String nombre, String direccion, String linea, String tipo, String horario, String disponible, String acces, String tempEspera){
   this.nombre = nombre;
   this.direccion = direccion;
   this.linea = linea ;
   this.tipo = tipo ;
   this.horario = horario;
   this.disponible = disponible;
   this.acces = acces ;
   this.tempEspera = tempEspera;
 }

 public String getNombre(){
 	return nombre;
 }

 public void setNombre(String nombre){
 	this.nombre = nombre;
 }

 public String getDireccion(){
 	return direccion;
 }

 public void setDireccion(String direccion){
 	this.direccion = direccion;
 }

 public String getLinea(){
 	return linea;
 }

 public void setLinea(String linea){
 	this.linea = linea;
 }

 public String getTipo(){
 	return tipo;
 }

 public void setTipo(String tipo){
 	this.tipo = tipo;
 }

 public String getHorario(){
 	return horario;
 }

 public void setHorario(String horario){
 	this.horario = horario;
 }

 public String getDisponible(){
 	return disponible;
 }

 public void setDisponible(String disponible){
 	this.disponible = disponible;
 }

 public String getAcces(){
 	return acces;
 }

 public void setAcces(String acces){
 	this.acces = acces;
 }

 public String getTempEspera(){
 	return tempEspera;
 }

 public void setTempEspera(String tempEspera){
 	this.tempEspera = tempEspera;
 }


 public String [] data(){
  String [] data = {getNombre(), getDireccion(), getLinea(), getTipo(), getHorario(), getDisponible(), getAcces(), getTempEspera()};
  return data;  
 }

}