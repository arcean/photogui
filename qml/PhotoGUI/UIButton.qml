// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Image {
    id: icon
    width: 64
    height: 64
    state: in_portrait ? "portrait" : "landscape"
    property alias shadowSource: shadow.source
    property alias shadowOpacity: shadow.opacity
    property int number: -1
    property bool rotationEnabled: true;

    signal clicked(int number)

    states: [
        State {
            name: "portrait"
            PropertyChanges {
                target: icon
                rotation: rotationEnabled ? -90 : 1080
            }
        },
        State {
            name: "landscape"
            PropertyChanges {
                target: icon
                rotation: rotationEnabled ? 0 : 1080
            }
        }
    ]

    transitions: [
        Transition {
            ParallelAnimation {
                NumberAnimation { properties: "rotation"; duration: 500; easing.type: Easing.InOutQuad }
            }
        }
    ]

    Image {
        id: shadow
        anchors.fill: parent
        source: _ICON_LOCATION + "icon-m-common-camera.png"
        opacity: 0.2
        visible: false
    }

    MouseArea {
        anchors.fill: parent

        onClicked: parent.clicked(parent.number)
        onPressed: shadow.visible = true;
        onReleased: {
            shadow.visible = false;
        }
    }
}

