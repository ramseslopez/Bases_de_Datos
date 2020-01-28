package mx.FBD;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.event.ActionEvent;
import java.io.IOException;

public class ControladorMenu {

    @FXML
    private Button regresar;

    @FXML
    void IrInicio(ActionEvent event) throws IOException {
        App.setRoot("inicio");
    }

}

