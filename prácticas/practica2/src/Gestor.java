import com.csvreader.CsvWriter;
import java.util.*;
import java.io.*;

public class Gestor{

  public static void main(String[] args) throws IOException {

    CsvWriter w = new CsvWriter("GestionCDMX.csv");
    ArrayList<Vehiculos> ves = new ArrayList<>();
    ves.add(new Vehiculos("ID", "SIM","Fecha", "Combustible", 0, true || false));
    ArrayList<Estaciones> est = new ArrayList<>();
    est.add(new Estaciones(null,null,null,null,null,null,null,null));
    est.add(new Estaciones("Nombre", "Direccion", "Linea", "Tipo", "Horario", "Disponibilidad", "Accesibilidad", "T.Espera"));
    ArrayList<Sitios> st = new ArrayList<>();
    st.add(new Sitios(null, null, null, null));
    st.add(new Sitios("Numero de Sito", "Direccion", "Telefono", "Disponibilidad"));
    ArrayList<Empleado> emp = new ArrayList<>();
    emp.add(new Empleado(null, null, null, null, null, null));
    emp.add(new Empleado("Nombre", "Nacimiento", "Direccion", "Genero", "Estudios", "Horario")); 

    String regis;
    System.out.println("           Sistema de la secretaria de movilidad CDMX (Resgistros)");


    String[] opciones = {"Vehiculos", "Estaciones", "Sitios", "Empleados", "EXIT"}; //"Empleados" agregar
    Menu menuOpciones = new Menu(opciones);

    Scanner opcion = new Scanner(System.in);
    int opcionElegida;
    int opUso;
    int opElem;

    Scanner opU = new Scanner(System.in);
    Scanner registroV = new Scanner(System.in);
    Scanner registroEs = new Scanner(System.in);
    Scanner registroSt = new Scanner(System.in);
    Scanner registroEmp = new Scanner(System.in);

    String[] vG = new String[6];
    String[] estG = new String[8];
    String[] stG = new String[4];
    String[] empG = new String[6];

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Crear copia de datos previos.
    try{
        File fichero = new File("GestionCDMX.csv");
        Scanner input = new Scanner(new File(fichero.getAbsolutePath()));
         int cont = 0;
         input.nextLine();
         while (input.hasNextLine()) {
             String lineAux = input.nextLine();
             char p = lineAux.charAt(0);

             if(p == '"'){ 
              lineAux = input.nextLine();
              lineAux = input.nextLine();
              cont++; 
             }

             if(cont == 0){
               //System.out.println(lineAux);
               String[] datosRespaldo = lineAux.split(",");
               ves.add(new Vehiculos(datosRespaldo[0], datosRespaldo[1],datosRespaldo[2], datosRespaldo[3], Integer.parseInt(datosRespaldo[4]), Boolean.parseBoolean(datosRespaldo[5])));      
             } else if(cont == 1){
               //System.out.println(lineAux);
               String[] datosEstRespaldo = lineAux.split(",");
               est.add(new Estaciones(datosEstRespaldo[0], datosEstRespaldo[1], datosEstRespaldo[2], datosEstRespaldo[3], datosEstRespaldo[4], datosEstRespaldo[5], datosEstRespaldo[6] , datosEstRespaldo[7]));
             } else if(cont == 2){
               //System.out.println(lineAux);
               String[] datosStRespaldo = lineAux.split(",");
               st.add(new Sitios(datosStRespaldo[0], datosStRespaldo[1], datosStRespaldo[2], datosStRespaldo[3]));
             } else if(cont == 3){
               //System.out.println(lineAux);
               String[] datosEmpRespaldo = lineAux.split(",");
               emp.add(new Empleado(datosEmpRespaldo[0], datosEmpRespaldo[1], datosEmpRespaldo[2], datosEmpRespaldo[3], datosEmpRespaldo[4], datosEmpRespaldo[5]));               
             }

         }//while
            input.close();
    } catch (Exception ex) { }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Fin de la copia.   
    do{

      String[] opcionesUso = {"Registrar", "Consultar", "Eliminar", "Edita", "EXIT"};
      Menu opcUso = new Menu(opcionesUso);
      System.out.println(opcUso.toString());
      opUso = opU.nextInt();

      switch(opUso){
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// Case 1 
                case 1:
  do{

    System.out.println("\n  ¿Que desea registar?: ");
    System.out.println(menuOpciones.toString());
    opcionElegida = opcion.nextInt();

    switch(opcionElegida){
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Caso 1 del caso 1Cargar vehiculos.
                          case 1:
                            System.out.println("1.- Cargar datos de archivo.            2.- Cargar los datos manualmente.");
                            Scanner cargar = new Scanner(System.in);
                            int carga = cargar.nextInt();

                            switch(carga){
                               ///////////////////////////////////////////////////////////////////////Leer un archivo, saca los datos y los guarda.
                              case 1:
                                     try {
                                             File fichero = new File("vehiculos.txt");
                                             Scanner input = new Scanner(new File(fichero.getAbsolutePath()));
                                 
                                             while (input.hasNextLine()) {
                                                 String line = input.nextLine();
                                                 System.out.println(line);
                                 
                                                 String[] datos = line.split(",");
                                                 ves.add(new Vehiculos(datos[0], datos[1],datos[2], datos[3], Integer.parseInt(datos[4]), Boolean.parseBoolean(datos[5])));
                                             }
                                             input.close();
                                         } catch (Exception ex) {
                                             ex.printStackTrace();
                                         }
                               /////////////////////////////////////////////////////////////////Fin del caso 1 del caso 1 del caso 1
                              break;
                               ///////////////////////////////////////////////////////////////// Cargar datos manualmente
                              case 2:
                                 System.out.println("Llene el formulario de registro del vehiculo porfavor");
                                 String[] regVehiculo = {"Identificador del vehiculo(#) Ejemplo: 1 : ", "SIM: ", "Fecha de inicio de operacion (aaaa,mm,dd): ", "Tipo de combustible: ", "Capacidad: ", "Disponibilidad(True/False): "};
                                    for(int i = 0; i < regVehiculo.length; i++){
                                      System.out.print(regVehiculo[i]);
                                      regis = registroV.nextLine();
                                      estG[i] = regis;
                                    }//For
                                 ves.add(new Vehiculos(vG[0], vG[1],vG[2], vG[3], Integer.parseInt(vG[4]), Boolean.parseBoolean(vG[5])));
                              break;
                              /////////////////////////////////////////////////////////////////Fin del caso 2 del caso 1
                            }//Switch anidado
                            break;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Fin del caso 1 del caso 1.
                          case 2:
                            System.out.println("1.- Cargar datos de archivo.            2.- Cargar los datos manualmente.");
                            Scanner cargar2 = new Scanner(System.in);
                            int carga2 = cargar2.nextInt();

                            switch(carga2){
                            ///////////////////////////////////////////////////////////////////////Leer un archivo, saca los datos y los guarda.
                              case 1:
                                     try {
                                             File fichero = new File("estaciones.txt");
                                             Scanner input = new Scanner(new File(fichero.getAbsolutePath()));
                                 
                                             while (input.hasNextLine()) {
                                                 String line = input.nextLine();
                                                 System.out.println(line);
                                 
                                                 String[] datos = line.split(",");
                                                 est.add(new Estaciones(datos[0], datos[1], datos[2], datos[3], datos[4], datos[5], datos[6] , datos[7]));
                                             }
                                             input.close();
                                         } catch (Exception ex) {
                                             ex.printStackTrace();
                                         }
                            /////////////////////////////////////////////////////////////////Fin del caso 1 del caso 2 del caso 1
                              break;
                            ///////////////////////////////////////////////////////////////// Cargar datos manualmente
                              case 2:
                                 System.out.println("Llene el formulario de registro de la estacion porfavor");
                                 String[] regEstacion = {"Nombre de la estacion: ", "Direccion de la estacion: ", "Linea: ", "Tipo de transporte: ", "Horario de servicio: ", "Disponibilidad: ", "Accesibilidad: ", "Timepo de Espera: "};
                                    for(int i = 0; i < regEstacion.length; i++){
                                      System.out.print(regEstacion[i]);
                                      regis = registroEs.nextLine();
                                      estG[i] = regis;
                                    }//For
                                 est.add(new Estaciones(estG[0], estG[1], estG[2], estG[3], estG[4], estG[5], estG[6] , estG[7]));
                              break;
                              /////////////////////////////////////////////////////////////////Fin del caso 2 del caso 2
                            }//Switch anidado
                          break;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Caso 3 del caso 1.
                          case 3:
                            System.out.println("1.- Cargar datos de archivo.            2.- Cargar los datos manualmente.");
                            Scanner cargar3 = new Scanner(System.in);
                            int carga3 = cargar3.nextInt();

                            switch(carga3){
                            ///////////////////////////////////////////////////////////////////////Leer un archivo, saca los datos y los guarda.
                              case 1:
                                     try {
                                             File fichero = new File("sitios.txt");
                                             Scanner input = new Scanner(new File(fichero.getAbsolutePath()));
                                 
                                             while (input.hasNextLine()) {
                                                 String line = input.nextLine();
                                                 System.out.println(line);
                                 
                                                 String[] datos = line.split(",");
                                                 st.add(new Sitios(datos[0], datos[1], datos[2], datos[3]));
                                             }
                                             input.close();
                                         } catch (Exception ex) {
                                             ex.printStackTrace();
                                         }
                            /////////////////////////////////////////////////////////////////Fin del caso 1 del caso 3 del caso 1
                              break;
                            ///////////////////////////////////////////////////////////////// Cargar datos manualmente
                              case 2:
                                 System.out.println("Llene el formulario de registro del vehiculo porfavor");
                                 String[] regEstacion = {"Numero de Sito: ", "Direccion: ", "Telefono: ", "Disponibilidad de vehiculos: "};
                                    for(int i = 0; i < regEstacion.length; i++){
                                      System.out.print(regEstacion[i]);
                                      regis = registroEs.nextLine();
                                      stG[i] = regis;
                                    }//For
                                 st.add(new Sitios(stG[0], stG[1], stG[2], stG[3]));
                              break;
                              /////////////////////////////////////////////////////////////////Fin del caso 2 del caso 3 del caso 1
                            }//Switch anidado
                           break;
                         case 4:
                         System.out.println("1.- Cargar datos de archivo.            2.- Cargar los datos manualmente.");
                         Scanner cargar4 = new Scanner(System.in);
                         int carga4 = cargar4.nextInt();

                         switch(carga4){
                          ///////////////////////////////////////////////////////////////////////Leer un archivo, saca los datos y los guarda.
                            case 1:
                                   try {
                                           File fichero = new File("empleados.txt");
                                           Scanner inpu_t = new Scanner(new File(fichero.getAbsolutePath()));
                               
                                           while (inpu_t.hasNextLine()) {
                                               String line = inpu_t.nextLine();
                                               System.out.println(line);
                               
                                               String[] datoS = line.split(",");
                                               emp.add(new Empleado(datoS[0], datoS[1], datoS[2], datoS[3], datoS[4], datoS[5]));
                                           }
                                           inpu_t.close();
                                       } catch (Exception ex) {
                                           ex.printStackTrace();
                                       }
                          /////////////////////////////////////////////////////////////////Fin del caso 1 del caso 3 del caso 1
                            break;
                          ///////////////////////////////////////////////////////////////// Cargar datos manualmente
                            case 2:
                               System.out.println("Llene el formulario de registro del vehiculo porfavor");
                               String[] regEmpleado = {"Nombre del empleado: ", "Fecha de nacimiento: ", "Direccion: ", "Genero: ", "Estudios: ", "Horario: "};
                                  for(int i = 0; i < regEmpleado.length; i++){
                                    System.out.print(regEmpleado[i]);
                                    regis = registroEmp.nextLine();
                                    empG[i] = regis;
                                  }//For
                               emp.add(new Empleado(empG[0], empG[1], empG[2], empG[3], empG[4], empG[5]));
                            break;
                            /////////////////////////////////////////////////////////////////Fin del caso 2 del caso 3 del caso 1
                          }//Switch anidado
                         break;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Fin del caso 3 del caso 1 del caso 1. 
    }//Switch

  }while(opcionElegida != 5); // Fin del segundo Do While
                break;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Inicio del caso 2 COnsultar
                case 2:
                  try {
                      File fichero = new File("GestionCDMX.csv");
                      Scanner input = new Scanner(new File(fichero.getAbsolutePath()));
              
                      while (input.hasNextLine()) {
                          String line = input.nextLine();

                          char c = line.charAt(0);
                          if(c == '"'){ 
                           line = "------------------------------------------------------------------------";
                          }
                          line = line.replaceAll(",",", ");
                          System.out.println(line);
                      }
                      input.close();
                  } catch (Exception ex) {
                      ex.printStackTrace();
                  }
                break;
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// Fin de Case 2 Consultar Inicio de eliminar
            case 3:
                  System.out.println("Que deseas eliminar?: ");
                  String[] opcionesEliminar = {"Vehiculos", "Estaciones", "Sitios", "Empleados"};
                  Menu opcionesElim = new Menu(opcionesEliminar);
                  System.out.println(opcionesElim.toString());
                  Scanner eliminado = new Scanner(System.in);
                  int queEliminar = eliminado.nextInt();
                  ////////////////////////////////////////////////////////////////////////////////// 
                      switch(queEliminar){
                            //////////////////////////////////////////////////////////////////////////////////                      
                             case 1:
                             System.out.println("ID del vehiculo que deseas eliminar: ");
                             
                            for( Vehiculos v : ves){
                              String[] vehi = new String[6];
                              vehi = v.data();
                              String aux = "";
                              for(int i = 0; i < vehi.length; i++ ){ 
                                aux +=  " " + vehi[i];
                              }
                              System.out.println(aux);
                            }//for

                             Scanner eliminar = new Scanner(System.in);
                             String que = eliminar.nextLine();
                             int cont = 0;
                             for(Vehiculos v: ves){
                               
                              String[] vehi = new String[6];
                              vehi = v.data();
                              if(vehi[0].equals(que)){
                                break;
                              }
                              cont++;
                             }
                             ves.remove(cont);

                             break;
                             //////////////////////////////////////////////////////////////////////////////////
                             case 2:
                             System.out.println("Nombre de la  estacion que deseas eliminar: ");
                             
                            for( Estaciones e : est){
                              String[] eehi = new String[6];
                              eehi = e.data();
                              String aux = "";
                              for(int i = 0; i < eehi.length; i++ ){ 
                                aux +=  " " + eehi[i];
                              }
                              System.out.println(aux);
                            }//for

                             Scanner eliminarEs = new Scanner(System.in);
                             String queE = eliminarEs.nextLine();
                             int contEs = 0;
                             for(Estaciones e: est){
                               
                              String[] eehi = new String[6];
                              eehi = e.data();
                              if(eehi[0]== null){ continue; } else 
                              if(eehi[0].equals(queE)){
                                break;
                              }
                              contEs++;
                             }
                             est.remove(contEs+1);
                             break;
                             //////////////////////////////////////////////////////////////////////////////////
                             case 3:
                             System.out.println("Numero del sitio que deseas eliminar: ");
                             
                            for( Sitios s : st){
                              String[] sh = new String[6];
                              sh = s.data();
                              String aux = "";
                              for(int i = 0; i < sh.length; i++ ){ 
                                aux +=  " " + sh[i];
                              }
                              System.out.println(aux);
                            }//for

                             Scanner eliminarSt = new Scanner(System.in);
                             String queS = eliminarSt.nextLine();
                             int contSt = 0;
                             for(Sitios s: st){
                               
                              String[] shi = new String[6];
                              shi = s.data();
                              if(shi[0]== null){ continue; } else
                              if(shi[0].equals(queS)){
                                break;
                              }
                              contSt++;
                             }
                             st.remove(contSt+1);
                             break;
                             //////////////////////////////////////////////////////////////////////////////////
                             case 4:
                             System.out.println("Nombre del empleado que deseas eliminar: ");
                             
                            for( Empleado em : emp){
                              String[] empi = new String[6];
                              empi = em.data();
                              String aux = "";
                              for(int i = 0; i < empi.length; i++ ){ 
                                aux +=  " " + empi[i];
                              }
                              System.out.println(aux);
                            }//for

                             Scanner elemEmp = new Scanner(System.in);
                             String queEmp = elemEmp.nextLine();
                             int contEmp = 0;
                             for(Empleado em: emp){
                               
                              String[] empi = new String[6];
                              empi = em.data();
                              if(empi[0]== null){ continue; } else
                              if(empi[0].equals(queEmp)){
                                break;
                              }
                              contEmp++;
                             }
                             emp.remove(contEmp+1); 
                             break;
                             //////////////////////////////////////////////////////////////////////////////////
                      }//Switch
                  //////////////////////////////////////////////////////////////////////////////////    
            break;//Case 3
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Fin del eliminar
            case 4:
                  System.out.println("Que tipo de dato quieres modificar?: ");
                  String[] modificar = {"Vehiculo", "Estaciones", "Sitios", "Empleado"};
                  Menu modificarOpciones = new Menu(modificar);
                  System.out.println(modificarOpciones.toString());

                  Scanner modificarSeleccion = new Scanner(System.in);
                  int modificarSelec = modificarSeleccion.nextInt();
                  //////////////////////////////////////////////////////////////////////////////////////////////////////////    
                  switch(modificarSelec){
                            //////////////////////////////////////////////////////////////////////////////////////////////////////////
                            case 1:
                                  System.out.println("Id del vehiculo que quieres modificar: ");
                                  Scanner velModificar = new Scanner(System.in);
                                  
                                    for( Vehiculos v : ves){
                                      String[] vehi = new String[6];
                                      vehi = v.data();
                                      String aux = "";
                                      for(int i = 0; i < vehi.length; i++ ){ 
                                        aux +=  " " + vehi[i];
                                      }
                                      System.out.println(aux);
                                    }//for

                                    String velModi = velModificar.nextLine();

                                    System.out.println("Llene el formulario de registro del vehiculo porfavor");
                                    String[] regVehiculo = {"Identificador del vehiculo(#) Ejemplo: 1 : ", "SIM: ", "Fecha de inicio de operacion (aaaa,mm,dd): ", "Tipo de combustible: ", "Capacidad: ", "Disponibilidad(True/False): "};
                                       for(int i = 0; i < regVehiculo.length; i++){
                                         System.out.print(regVehiculo[i]);
                                         regis = registroV.nextLine();
                                         vG[i] = regis;
                                       }//For
        
                                     int cont = 0;
                                     for(Vehiculos v: ves){
                                       
                                      String[] vehiAux = new String[6];
                                      vehiAux = v.data();
                                      if(vehiAux[0].equals(velModi)){
                                        break;
                                      }
                                      cont++;
                                     }
                                     ves.remove(cont);
                                     ves.add(new Vehiculos(vG[0], vG[1],vG[2], vG[3], Integer.parseInt(vG[4]), Boolean.parseBoolean(vG[5])));
                            break;
                            //////////////////////////////////////////////////////////////////////////////////////////////////////////
                            case 2:
                            System.out.println("Nombre de la estacion que quieres modificar: ");
                            Scanner estModificar = new Scanner(System.in);
                            
                              for( Estaciones es : est){
                                String[] esti = new String[6];
                                esti = es.data();
                                String aux = "";
                                for(int i = 0; i < esti.length; i++ ){ 
                                  aux +=  " " + esti[i];
                                }
                                System.out.println(aux);
                              }//for

                              String estModi = estModificar.nextLine();

                              System.out.println("Llene el formulario de registro de la estacion porfavor");
                              String[] regEstacion = {"Nombre de la estacion: ", "Direccion de la estacion: ", "Linea: ", "Tipo de transporte: ", "Horario de servicio: ", "Disponibilidad: ", "Accesibilidad: ", "Timepo de Espera: "};
                                    for(int i = 0; i < regEstacion.length; i++){
                                   System.out.print(regEstacion[i]);
                                   regis = registroV.nextLine();
                                   estG[i] = regis;
                                 }//For
  
                               int contEst = 0;
                               for(Estaciones es : est){
                                 
                                String[] estiAux = new String[6];
                                estiAux = es.data();
                                if(estiAux[0] == null){ continue; }
                                if(estiAux[0].equals(estModi)){
                                  break;
                                }
                                contEst++;
                               }
                               est.remove(contEst+1);
                               est.add(new Estaciones(estG[0], estG[1], estG[2], estG[3], estG[4], estG[5], estG[6] , estG[7]));
                            
                            break;
                            //////////////////////////////////////////////////////////////////////////////////////////////////////////
                            case 3:
                            System.out.println("Numero del sitio que quieres modificar: ");
                            Scanner stModificar = new Scanner(System.in);
                            
                              for( Sitios s : st){
                                String[] sti = new String[6];
                                sti = s.data();
                                String aux = "";
                                for(int i = 0; i < sti.length; i++ ){ 
                                  aux +=  " " + sti[i];
                                }
                                System.out.println(aux);
                              }//for

                              String stModi = stModificar.nextLine();

                              System.out.println("Llene el formulario de registro del sitio porfavor");
                              String[] regSitio = {"Numero de Sito: ", "Direccion: ", "Telefono: ", "Disponibilidad de vehiculos: "};
                                    for(int i = 0; i < regSitio.length; i++){
                                   System.out.print(regSitio[i]);
                                   regis = registroV.nextLine();
                                   stG[i] = regis;
                                 }//For
  
                               int contSt = 0;
                               for(Sitios s : st){
                                 
                                String[] stiAux = new String[6];
                                stiAux = s.data();
                                if(stiAux[0] == null){ continue; }
                                if(stiAux[0].equals(stModi)){
                                  break;
                                }
                                contSt++;
                               }
                               st.remove(contSt+1);
                               st.add(new Sitios(stG[0], stG[1], stG[2], stG[3]));
                            break;
                            //////////////////////////////////////////////////////////////////////////////////////////////////////////
                            case 4:
                            System.out.println("Nombre del empleado que quieres modificar: ");
                            Scanner empModificar = new Scanner(System.in);
                            
                              for( Empleado e : emp){
                                String[] empi = new String[6];
                                empi = e.data();
                                String aux = "";
                                for(int i = 0; i < empi.length; i++ ){ 
                                  aux +=  " " + empi[i];
                                }
                                System.out.println(aux);
                              }//for

                              String empModi = empModificar.nextLine();

                              System.out.println("Llene el formulario de registro de la estacion porfavor");
                              String[] regEmpleado = {"Nombre del empleado: ", "Fecha de nacimiento: ", "Direccion: ", "Genero: ", "Estudios: ", "Horario: "};
                                for(int i = 0; i < regEmpleado.length; i++){
                                   System.out.print(regEmpleado[i]);
                                   regis = registroV.nextLine();
                                   empG[i] = regis;
                                 }//For
  
                               int contEmp = 0;
                               for(Empleado e : emp){
                                 
                                String[] empiAux = new String[6];
                                empiAux = e.data();
                                if(empiAux[0] == null){ continue; }
                                if(empiAux[0].equals(empModi)){
                                  break;
                                }
                                contEmp++;
                               }
                               emp.remove(contEmp+1);
                               emp.add(new Empleado(empG[0], empG[1], empG[2], empG[3], empG[4], empG[5]));
                            break;
                            //////////////////////////////////////////////////////////////////////////////////////////////////////////
                  }
                  //////////////////////////////////////////////////////////////////////////////////////////////////////////
            break;
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Fin del eliminar
          }
    } while(opUso != 5);
//////////////////////////////////////////////////////////////////////////////////Fin del Do general

    //ves.add(new Vehiculos("4", "220-FBU", "2015/02/02", "Gasolina", 8, false));
    //ves.add(new Vehiculos("5", "342-KLO", "2018/09/28", "Diesel", 30, true));
    //est.add(new Estaciones("Mixcoac", "Av.Rio Mixcoac", "7", "Metro", "6am-12am", "Disponible", "Subterranea", "3min"));

//////////////////////////////////////////////////////////////////////////////////Guardar en el archivo
    for (Vehiculos v : ves) {
      String [] data = v.data();
      w.writeRecord(data);
    }
    for (Estaciones es : est) {
      String [] dataa = es.data();
      w.writeRecord(dataa);
    }
    for (Sitios s : st) {
      String [] dataaa = s.data();
      w.writeRecord(dataaa);
    }
    for (Empleado e : emp) {
      String[] datA = e.data();
      w.writeRecord(datA);
    }

    w.close();
//////////////////////////////////////////////////////////////////////////////////Fin del cierre del programa y guardado de archivo.

  }//Main
}//Class
