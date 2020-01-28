package mx.FBD;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TreeTableColumn;
import javafx.scene.image.ImageView;
import javafx.event.ActionEvent;
import java.io.IOException;

public class ControladorSucursal {

    @FXML
    private TreeTableColumn<?, ?> rfc;

    @FXML
    private TreeTableColumn<?, ?> calle;

    @FXML
    private TreeTableColumn<?, ?> numero;

    @FXML
    private TreeTableColumn<?, ?> colonia;

    @FXML
    private TreeTableColumn<?, ?> alcaldia;

    @FXML
    private TreeTableColumn<?, ?> cp;

    @FXML
    private TreeTableColumn<?, ?> telefono;

    @FXML
    private Button regresar;

    @FXML
    private ImageView logo;

    @FXML
    void IrInicio(ActionEvent event) throws IOException {
        App.setRoot("inicio");
    }

}
