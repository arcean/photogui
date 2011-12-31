// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Item {
    id: component
    width: 114
    height: 390
    state: "rotate"

    signal clicked(int number)


    Image {
        anchors.fill: parent
        source: "qrc:/icons/toolbar_portrait.png"
    }

    UIButton {
        id: exp1
        anchors.top: parent.top
        anchors.topMargin: 6
        anchors.left: parent.left
        anchors.leftMargin: 6
        source: "qrc:/icons/exposure/icon-m-camera-exposure-minus2.svg"
        number: 1
        width: 48
        height: 48
        onClicked: parent.clicked(number)
    }
    UIButton {
        id: exp2
        anchors.top: exp1.bottom
        anchors.topMargin: 6
        anchors.left: parent.left
        anchors.leftMargin: 6
        source: "qrc:/icons/exposure/icon-m-camera-exposure-minus17.svg"
        number: 2
        width: 48
        height: 48
        onClicked: parent.clicked(number)
    }
    UIButton {
        id: exp3
        anchors.top: exp2.bottom
        anchors.topMargin: 6
        anchors.left: parent.left
        anchors.leftMargin: 6
        source: "qrc:/icons/exposure/icon-m-camera-exposure-minus13.svg"
        number: 3
        width: 48
        height: 48
        onClicked: parent.clicked(number)
    }
    UIButton {
        id: exp4
        anchors.top: exp3.bottom
        anchors.topMargin: 6
        anchors.left: parent.left
        anchors.leftMargin: 6
        source: "qrc:/icons/exposure/icon-m-camera-exposure-minus1.svg"
        number: 4
        width: 48
        height: 48
        onClicked: parent.clicked(number)
    }
    UIButton {
        id: exp5
        anchors.top: exp4.bottom
        anchors.topMargin: 6
        anchors.left: parent.left
        anchors.leftMargin: 6
        source: "qrc:/icons/exposure/icon-m-camera-exposure-minus07.svg"
        number: 5
        width: 48
        height: 48
        onClicked: parent.clicked(number)
    }
    UIButton {
        id: exp6
        anchors.top: exp5.bottom
        anchors.topMargin: 6
        anchors.left: parent.left
        anchors.leftMargin: 6
        source: "qrc:/icons/exposure/icon-m-camera-exposure-minus03.svg"
        number: 6
        width: 48
        height: 48
        onClicked: parent.clicked(number)
    }
    UIButton {
        id: exp7
        anchors.top: exp6.bottom
        anchors.topMargin: 6
        anchors.horizontalCenter: parent.horizontalCenter
        source: "qrc:/icons/exposure/icon-m-camera-exposure-0.svg"
        number: 7
        width: 48
        height: 48
        onClicked: parent.clicked(number)
    }
    UIButton {
        id: exp8
        anchors.top: parent.top
        anchors.topMargin: 6
        anchors.left: exp1.right
        anchors.leftMargin: 6
        source: "qrc:/icons/exposure/icon-m-camera-exposure-plus03.svg"
        number: 8
        width: 48
        height: 48
        onClicked: parent.clicked(number)
    }
    UIButton {
        id: exp9
        anchors.top: exp8.bottom
        anchors.topMargin: 6
        anchors.left: exp2.right
        anchors.leftMargin: 6
        source: "qrc:/icons/exposure/icon-m-camera-exposure-plus07.svg"
        number: 9
        width: 48
        height: 48
        onClicked: parent.clicked(number)
    }
    UIButton {
        id: exp10
        anchors.top: exp9.bottom
        anchors.topMargin: 6
        anchors.left: exp3.right
        anchors.leftMargin: 6
        source: "qrc:/icons/exposure/icon-m-camera-exposure-plus1.svg"
        number: 10
        width: 48
        height: 48
        onClicked: parent.clicked(number)
    }
    UIButton {
        id: exp11
        anchors.top: exp10.bottom
        anchors.topMargin: 6
        anchors.left: exp4.right
        anchors.leftMargin: 6
        source: "qrc:/icons/exposure/icon-m-camera-exposure-plus13.svg"
        number: 11
        width: 48
        height: 48
        onClicked: parent.clicked(number)
    }
    UIButton {
        id: exp12
        anchors.top: exp11.bottom
        anchors.topMargin: 6
        anchors.left: exp5.right
        anchors.leftMargin: 6
        source: "qrc:/icons/exposure/icon-m-camera-exposure-plus17.svg"
        number: 12
        width: 48
        height: 48
        onClicked: parent.clicked(number)
    }
    UIButton {
        id: exp13
        anchors.top: exp12.bottom
        anchors.topMargin: 6
        anchors.left: exp6.right
        anchors.leftMargin: 6
        source: "qrc:/icons/exposure/icon-m-camera-exposure-plus2.svg"
        number: 13
        width: 48
        height: 48
        onClicked: parent.clicked(number)
    }


    states: [
        State {
            name: "normal"
            PropertyChanges {
                target: exp1
                rotation: in_portrait ? -90 : 0
                rotationEnabled: true
            }
            PropertyChanges {
                target: exp2
                rotation: in_portrait ? -90 : 0
                rotationEnabled: true
            }
            PropertyChanges {
                target: exp3
                rotation: in_portrait ? -90 : 0
                rotationEnabled: true
            }
            PropertyChanges {
                target: exp4
                rotation: in_portrait ? -90 : 0
                rotationEnabled: true
            }
            PropertyChanges {
                target: exp5
                rotation: in_portrait ? -90 : 0
                rotationEnabled: true
            }
            PropertyChanges {
                target: exp6
                rotation: in_portrait ? -90 : 0
                rotationEnabled: true
            }
            PropertyChanges {
                target: exp7
                rotation: in_portrait ? -90 : 0
                rotationEnabled: true
            }
            PropertyChanges {
                target: exp8
                rotation: in_portrait ? -90 : 0
                rotationEnabled: true
            }
            PropertyChanges {
                target: exp9
                rotation: in_portrait ? -90 : 0
                rotationEnabled: true
            }
            PropertyChanges {
                target: exp10
                rotation: in_portrait ? -90 : 0
                rotationEnabled: true
            }
            PropertyChanges {
                target: exp11
                rotation: in_portrait ? -90 : 0
                rotationEnabled: true
            }
            PropertyChanges {
                target: exp12
                rotation: in_portrait ? -90 : 0
                rotationEnabled: true
            }
            PropertyChanges {
                target: exp13
                rotation: in_portrait ? -90 : 0
                rotationEnabled: true
            }
        },
        State {
            name: "rotate"
            PropertyChanges {
                target: exp1
                rotation: 1080
                rotationEnabled: false
            }
            PropertyChanges {
                target: exp2
                rotation: 1080
                rotationEnabled: false
            }
            PropertyChanges {
                target: exp3
                rotation: 1080
                rotationEnabled: false
            }
            PropertyChanges {
                target: exp4
                rotation: 1080
                rotationEnabled: false
            }
            PropertyChanges {
                target: exp5
                rotation: 1080
                rotationEnabled: false
            }
            PropertyChanges {
                target: exp6
                rotation: 1080
                rotationEnabled: false
            }
            PropertyChanges {
                target: exp7
                rotation: 1080
                rotationEnabled: false
            }
            PropertyChanges {
                target: exp8
                rotation: 1080
                rotationEnabled: false
            }
            PropertyChanges {
                target: exp9
                rotation: 1080
                rotationEnabled: false
            }
            PropertyChanges {
                target: exp10
                rotation: 1080
                rotationEnabled: false
            }
            PropertyChanges {
                target: exp11
                rotation: 1080
                rotationEnabled: false
            }
            PropertyChanges {
                target: exp12
                rotation: 1080
                rotationEnabled: false
            }
            PropertyChanges {
                target: exp13
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
