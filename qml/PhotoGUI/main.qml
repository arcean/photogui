import QtQuick 1.1
import com.nokia.meego 1.0
//import QtMobility.sensors 1.2

PageStackWindow {
    id: appWindow
    showStatusBar: false
    initialPage: mainPage

    property int _SMALL_FONT_SIZE: 18
    property int _STANDARD_FONT_SIZE: 24
    property int _LARGE_FONT_SIZE: 40
    property string _TEXT_COLOR: theme.inverted ? "white" : "black"
    property string _ICON_LOCATION: "/usr/share/themes/blanco/meegotouch/icons/"
    property string _ACTIVE_COLOR: "color11"
    property string _INDICATOR_SEARCHING: "yellow"
    property string _INDICATOR_FOCUSED: "blue"
    property string _INDICATOR_READY: "green"
    property bool in_portrait: false
    property string _CAMERA_DIR: "camera_n950"

    Component.onCompleted: {
        theme.inverted = true;
    }

    MainPage {
        id: mainPage
    }
/*
    OrientationSensor {
        id: sensor
        active: true
        onReadingChanged: {
            if (reading.orientation == OrientationReading.RightUp)
                in_portrait = false;
                //icon.state = "landscape"
            else if (reading.orientation == OrientationReading.TopUp)
                in_portrait = true;
                //icon.state = "portrait"
        }
    }*/
}
