// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Item {
    id: component
    width: 416
    height: 76
    state: "rotate"

    signal clicked(int number)


    Image {
        anchors.fill: parent
        source: "qrc:/icons/toolbar.png"
    }

    UIButton {
        id: cam1
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 6
        source: "qrc:/icons/" + _CAMERA_DIR + "/cam1.png"
        number: 1
        onClicked: parent.clicked(number)
    }
    UIButton {
        id: cam2
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: cam1.right
        anchors.leftMargin: 6
        source: "qrc:/icons/" + _CAMERA_DIR + "/cam2.png"
        number: 2
        onClicked: parent.clicked(number)
    }
    UIButton {
        id: cam3
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: cam2.right
        anchors.leftMargin: 6
        source: "qrc:/icons/" + _CAMERA_DIR + "/cam3.png"
        number: 3
        onClicked: parent.clicked(number)
    }
    UIButton {
        id: cam4
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: cam3.right
        anchors.leftMargin: 6
        source: "qrc:/icons/" + _CAMERA_DIR + "/cam4.png"
        number: 4
        onClicked: parent.clicked(number)
    }
    UIButton {
        id: cam5
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: cam4.right
        anchors.leftMargin: 6
        source: "qrc:/icons/" + _CAMERA_DIR + "/cam5.png"
        number: 5
        onClicked: parent.clicked(number)
    }
    UIButton {
        id: cam6
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: cam5.right
        anchors.leftMargin: 6
        source: "qrc:/icons/" + _CAMERA_DIR + "/cam6.png"
        number: 6
        onClicked: parent.clicked(number)
    }

    states: [
        State {
            name: "normal"
            PropertyChanges {
                target: cam1
                rotation: in_portrait ? -90 : 0
                rotationEnabled: true
            }
            PropertyChanges {
                target: cam2
                rotation: in_portrait ? -90 : 0
                rotationEnabled: true
            }
            PropertyChanges {
                target: cam3
                rotation: in_portrait ? -90 : 0
                rotationEnabled: true
            }
            PropertyChanges {
                target: cam4
                rotation: in_portrait ? -90 : 0
                rotationEnabled: true
            }
            PropertyChanges {
                target: cam5
                rotation: in_portrait ? -90 : 0
                rotationEnabled: true
            }
            PropertyChanges {
                target: cam6
                rotation: in_portrait ? -90 : 0
                rotationEnabled: true
            }
        },
        State {
            name: "rotate"
            PropertyChanges {
                target: cam1
                rotation: 1080
                rotationEnabled: false
            }
            PropertyChanges {
                target: cam2
                rotation: 1080
                rotationEnabled: false
            }
            PropertyChanges {
                target: cam3
                rotation: 1080
                rotationEnabled: false
            }
            PropertyChanges {
                target: cam4
                rotation: 1080
                rotationEnabled: false
            }
            PropertyChanges {
                target: cam5
                rotation: 1080
                rotationEnabled: false
            }
            PropertyChanges {
                target: cam6
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
