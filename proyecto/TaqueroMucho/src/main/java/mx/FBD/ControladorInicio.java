package mx.FBD;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.image.ImageView;
import javafx.event.ActionEvent;
import javafx.scene.input.MouseEvent;
import java.io.IOException;

public class ControladorInicio {

    @FXML
    private Button menu;

    @FXML
    private Button sucursal;

    @FXML
    private Button nosotros;

    @FXML
    private ImageView logo;

    @FXML
    void IrMenu(ActionEvent event) throws IOException {
        App.setRoot("menu");
    }

    @FXML
    void IrNosotros(ActionEvent event) throws IOException {
        App.setRoot("nosotros");
    }

    @FXML
    void IrSucursal(ActionEvent event) throws IOException {
        App.setRoot("sucursales");
    }

    @FXML
    void IrTaqueroCorazon(MouseEvent event) throws IOException {
        App.setRoot("menu");
    }

}
