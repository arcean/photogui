// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Item {
    id: component
    width: 416
    height: 84
    state: "hide"

    signal clicked(int number)

    function showResolution()
    {
        resolution.state = "normal";
    }

    function hideResolution()
    {
        resolution.state = "rotate";
    }

    Rectangle {
        x: 8
        y: 4
        width: 416
        height: 76
        color: "black"
        opacity: 0.3
    }

    ResolutionComponent {
        id: resolution
        x: 0
        y: 0
        onClicked:  {
            hideResolution();
            parent.clicked(number);
        }
    }

    states: [
        State {
            name: "show"
            PropertyChanges {
                target: resolution
                state: "normal"
            }
        },
        State {
            name: "hide"
            PropertyChanges {
                target: resolution
                state: "rotate"
            }
        }
    ]
}
