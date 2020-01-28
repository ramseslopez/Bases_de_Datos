package mx.FBD;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.image.ImageView;
import javafx.event.ActionEvent;
import java.io.IOException;

public class ControladorNosotros {

    @FXML
    private ImageView logo;

    @FXML
    private Button tortillero;

    @FXML
    private Button parrillero;

    @FXML
    private Button mesero;

    @FXML
    private Button cajero;

    @FXML
    private Button repartidor;

    @FXML
    private Button taquero;

    @FXML
    private Button regresar;

    @FXML
    void IrCajero(ActionEvent event) throws IOException {

    }

    @FXML
    void IrInicio(ActionEvent event) throws IOException {
        App.setRoot("inicio");
    }

    @FXML
    void IrMesero(ActionEvent event) throws IOException {

    }

    @FXML
    void IrParrillero(ActionEvent event) throws IOException {

    }

    @FXML
    void IrRepartidor(ActionEvent event) throws IOException {

    }

    @FXML
    void IrTaquero(ActionEvent event) throws IOException {

    }

    @FXML
    void IrTortillero(ActionEvent event) throws IOException {

    }

}
