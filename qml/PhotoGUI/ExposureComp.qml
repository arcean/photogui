// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Item {
    id: component
    width: 122 //114
    height: 394 //390
    state: "hide"

    signal clicked(int number)

    function showExposureComp()
    {
        exposure.state = "normal";
    }

    function hideExposureComp()
    {
        exposure.state = "rotate";
    }

    Rectangle {
        x: 8
        y: 4
        width: 114
        height: 390
        color: "black"
        opacity: 0.3
    }

    ExposureCompComponent {
        id: exposure
        x: 0
        y: 0
        onClicked:  {
            hideExposureComp();
            parent.clicked(number);
        }
    }

    states: [
        State {
            name: "show"
            PropertyChanges {
                target: exposure
                state: "normal"
            }
        },
        State {
            name: "hide"
            PropertyChanges {
                target: exposure
                state: "rotate"
            }
        }
    ]
}
