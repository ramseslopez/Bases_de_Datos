module mx.FBD {
    requires javafx.controls;
    requires javafx.fxml;

    opens mx.FBD to javafx.fxml;
    exports mx.FBD;
}