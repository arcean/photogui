// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Item {
    id: component
    width: 288
    height: 84
    state: "hide"

    signal clicked(int number)

    function showFlash()
    {
        state = "show";
        flash.state = "normal";
    }

    function hideFlash()
    {
        flash.state = "rotate";
        state = "hide";
    }

    Rectangle {
        x: 8
        y: 4
        width: 280
        height: 76
        color: "black"
        opacity: 0.3
    }

    FlashComponent {
        id: flash
        x: 0
        y: 0
        onClicked:  {
            hideFlash();
            parent.clicked(number);
        }
    }

    states: [
        State {
            name: "show"
            PropertyChanges {
                target: flash
                state: "normal"
            }
        },
        State {
            name: "hide"
            PropertyChanges {
                target: flash
                state: "rotate"
            }
        }
    ]
}
