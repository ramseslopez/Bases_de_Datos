public class Sitios{
	
	String numSitio;
	String direccion;
	String telefono;
	String disponibilidad;

	public Sitios(){
		numSitio = "";
		direccion = "";
		telefono = "";
		disponibilidad = "";
	}

	public Sitios(String numSitio, String direccion, String telefono, String disponibilidad){
		this.numSitio = numSitio;
		this.direccion = direccion;
		this.telefono = telefono;
		this.disponibilidad = disponibilidad;
	}

	public String getNumSitio(){
		return numSitio;
	}

	public void setNumSitio(String numSitio){
		this.numSitio = numSitio;
	}

	public String getDireccion(){
		return direccion;
	}

	public void setDireccion(String direccion){
		this.direccion = direccion;
	}

	public String getTelefono(){
		return telefono;
	}

	public void setTelefono(String telefono){
		this.telefono = telefono;
	}

	public String getDisponibilidad(){
		return disponibilidad;
	}

	public void setDisponibilidad(String disponibilidad){
		this.disponibilidad = disponibilidad;
	}

 	public String [] data(){
  		String [] data = {getNumSitio(), getDireccion(), getTelefono(), getDisponibilidad()};
  		return data;  
 	}

}