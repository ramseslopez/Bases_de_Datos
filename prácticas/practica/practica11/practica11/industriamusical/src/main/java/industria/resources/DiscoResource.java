package industria.resources;

import industria.model.Disco;
import industria.respository.DAODisco;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class DiscoResource {

    @Autowired
    private DAODisco daoDisco;

    @RequestMapping(value = "/discos", method = RequestMethod.GET)
    public List<Disco> discos(){
        return daoDisco.getAllDisco();
    }

    @RequestMapping(value = "/disco/{disco}", method = RequestMethod.GET)
    public Disco disquera(@PathVariable(value = "disco")String disco){
        return daoDisco.getDisco(disco);
    }

    @RequestMapping(value = "/disco", method = RequestMethod.POST)
    public Disco insertDisco(@RequestBody Disco disco){
        daoDisco.insertDisco(disco);
        return disco;
    }

    @RequestMapping(value = "/disco/{disco}", method = RequestMethod.PUT)
    public Disco updateDisco(@PathVariable("num") int nombre,
                                   @RequestParam("album") String album,
                                   @RequestParam("genero") String genero,
                                    @RequestParam("fecha_lanzamiento") String fecha_lanzamiento,
                                    @RequestParam("disquera") String disquera,
                                    @RequestParam("pais_disquera") String pais_disquera,
                                    @RequestParam("nombre_int") String nombre_int,
                                   @RequestBody Disco disco
                             ){
        daoDisco.actualizaDisco(nombre, album, genero, fecha_lanzamiento, disquera, pais_disquera, nombre_int, disco);
        return disco;
    }

    @RequestMapping(value = "/{disco}/{pais}/disco", method = RequestMethod.DELETE)
    public Disco deleteDisco(@PathVariable("num") int nombre,
                             @RequestParam("album") String album,
                             @RequestParam("genero") String genero,
                             @RequestParam("fecha_lanzamiento") String fecha_lanzamiento,
                             @RequestParam("disquera") String disquera,
                             @RequestParam("pais_disquera") String pais_disquera,
                             @RequestParam("nombre_int") String nombre_int,
                             @RequestBody Disco disco
    ){
        daoDisco.actualizaDisco(nombre, album, genero, fecha_lanzamiento, disquera, pais_disquera, nombre_int, disco);
        return disco;
    }
}
