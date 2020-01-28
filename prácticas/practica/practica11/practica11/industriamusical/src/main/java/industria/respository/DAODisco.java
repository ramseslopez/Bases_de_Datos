package industria.respository;

import java.util.List;
import industria.model.Disco;

public interface DAODisco{

    public List<Disco> getAllDisco();

    public Disco insertDisco(Disco d);

    public Disco getDisco(String d);

    public Disco actualizaDisco(int num_ref, String album, String genero, String fecha_lanzamiento, String disquera, String pais_disquera, String nombre_int, Disco d);

}