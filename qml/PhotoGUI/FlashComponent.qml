// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Item {
    id: component
    width: 280
    height: 76
    state: "rotate"

    signal clicked(int number)


    Image {
        anchors.fill: parent
        source: "qrc:/icons/toolbar.png"
    }

    UIButton {
        id: flash_off
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        //anchors.leftMargin: 6
        source: "qrc:/icons/icon-m-camera-flash-off.png"
        shadowSource: "qrc:/icons/icon-m-camera-flash-off-selected.png"
        shadowOpacity: 1
        number: 1
        onClicked: parent.clicked(number)
    }
    UIButton {
        id: flash_auto
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: flash_off.right
        anchors.leftMargin: 6
        source: "qrc:/icons/icon-m-camera-flash-auto.png"
        shadowSource: "qrc:/icons/icon-m-camera-flash-auto-selected.png"
        shadowOpacity: 1
        number: 2
        onClicked: parent.clicked(number)
    }
    UIButton {
        id: flash_always
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: flash_auto.right
        anchors.leftMargin: 6
        source: "qrc:/icons/icon-m-camera-flash-always.png"
        shadowSource: "qrc:/icons/icon-m-camera-flash-always-selected.png"
        shadowOpacity: 1
        number: 3
        onClicked: parent.clicked(number)
    }
    UIButton {
        id: flash_red_eye
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: flash_always.right
        anchors.leftMargin: 6
        source: "qrc:/icons/icon-m-camera-flash-red-eye.png"
        shadowSource: "qrc:/icons/icon-m-camera-flash-red-eye-selected.png"
        shadowOpacity: 1
        number: 4
        onClicked: parent.clicked(number)
    }

    states: [
        State {
            name: "normal"
            PropertyChanges {
                target: flash_off
                rotation: in_portrait ? -90 : 0
                rotationEnabled: true
            }
            PropertyChanges {
                target: flash_auto
                rotation: in_portrait ? -90 : 0
                rotationEnabled: true
            }
            PropertyChanges {
                target: flash_always
                rotation: in_portrait ? -90 : 0
                rotationEnabled: true
            }
            PropertyChanges {
                target: flash_red_eye
                rotation: in_portrait ? -90 : 0
                rotationEnabled: true
            }
        },
        State {
            name: "rotate"
            PropertyChanges {
                target: flash_off
                rotation: 1080
                rotationEnabled: false
            }
            PropertyChanges {
                target: flash_auto
                rotation: 1080
                rotationEnabled: false
            }
            PropertyChanges {
                target: flash_always
                rotation: 1080
                rotationEnabled: false
            }
            PropertyChanges {
                target: flash_red_eye
                rotation: 1080
                rotationEnabled: false
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
}
