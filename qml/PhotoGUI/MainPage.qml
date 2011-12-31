import QtQuick 1.1
import com.nokia.meego 1.0

Page {
    //orientationLock: PageOrientation.LockLandscape
    state: "hide"

    property string flash_icon_string: "icon-m-camera-flash-off"
    property string flash_icon_selected_string: "icon-m-camera-flash-off-selected"
    property string resolution_icon_string: "cam1"
    property string exposure_icon_string: "icon-m-camera-exposure-0"

    function changeExposureButtonIcon(number)
    {
        if(number == 1)
            exposure_icon_string = "icon-m-camera-exposure-minus2";
        else if(number == 2)
            exposure_icon_string = "icon-m-camera-exposure-minus17";
        else if(number == 3)
            exposure_icon_string = "icon-m-camera-exposure-minus13";
        else if(number == 4)
            exposure_icon_string = "icon-m-camera-exposure-minus1";
        else if(number == 5)
            exposure_icon_string = "icon-m-camera-exposure-minus07";
        else if(number == 6)
            exposure_icon_string = "icon-m-camera-exposure-minus03";
        else if(number == 7)
            exposure_icon_string = "icon-m-camera-exposure-0";
        else if(number == 8)
            exposure_icon_string = "icon-m-camera-exposure-plus03";
        else if(number == 9)
            exposure_icon_string = "icon-m-camera-exposure-plus07";
        else if(number == 10)
            exposure_icon_string = "icon-m-camera-exposure-plus1";
        else if(number == 11)
            exposure_icon_string = "icon-m-camera-exposure-plus13";
        else if(number == 12)
            exposure_icon_string = "icon-m-camera-exposure-plus17";
        else
            exposure_icon_string = "icon-m-camera-exposure-plus2";

        hideAll();
    }

    function changeResolutionButtonIcon(number)
    {
        if(number == 1)
            resolution_icon_string = "cam1";
        else if(number == 2)
            resolution_icon_string = "cam2";
        else if(number == 3)
            resolution_icon_string = "cam3";
        else if(number == 4)
            resolution_icon_string = "cam4";
        else if(number == 5)
            resolution_icon_string = "cam5";
        else
            resolution_icon_string = "cam6";

        hideAll();
    }

    function changeFlashButtonIcon(number)
    {
        if(number == 1) {
            flash_icon_string = "icon-m-camera-flash-off";
            flash_icon_selected_string = "icon-m-camera-flash-off-selected";
        }
        else if (number == 2) {
            flash_icon_string = "icon-m-camera-flash-auto";
            flash_icon_selected_string = "icon-m-camera-flash-auto-selected";
        }
        else if (number == 3) {
            flash_icon_string = "icon-m-camera-flash-always";
            flash_icon_selected_string = "icon-m-camera-flash-always-selected";
        }
        else {
            flash_icon_string = "icon-m-camera-flash-red-eye";
            flash_icon_selected_string = "icon-m-camera-flash-red-eye-selected";
        }

        hideAll();
    }

    Rectangle {
        anchors.fill: parent
        color: "white"
        opacity: 0.4

        MouseArea {
            anchors.fill: parent
            onClicked: {
                hideAll();
            }
        }
    }

    UIButton {
        id: exposure_button
        anchors.top: parent.top
        anchors.topMargin: 200
        anchors.left: parent.left
        anchors.leftMargin: 16
        source: "qrc:/icons/exposure/" + exposure_icon_string + ".svg"
        onClicked: showExposureComp();
        smooth: true
        width: 48
        height: 48
    }

    UIButton {
        id: flash_button
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 16
        anchors.right: parent.right
        anchors.rightMargin: 16
        source: "qrc:/icons/" + flash_icon_string + ".png"
        shadowSource: "qrc:/icons/" + flash_icon_string + ".png"
        shadowOpacity: 1
        onClicked: showFlash();
    }

    UIButton {
        id: resolution_button
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 16
        anchors.left: parent.left
        anchors.leftMargin: 16
        source: "qrc:/icons/" + _CAMERA_DIR + "/" + resolution_icon_string + ".png"
        onClicked: showResolution();
    }

    ExposureComp {
        id: exposure
        anchors.top: parent.top
        anchors.topMargin: 16
        x: -500
        state: "hide"
        onClicked: changeExposureButtonIcon(number)
    }

    Resolution {
        id: resolution
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 8
        x: -500
        state: "hide"
        onClicked: changeResolutionButtonIcon(number)
    }

    Flash {
        id: flash
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 8
        x: parent.width + 500
        state: "hide"
        onClicked: changeFlashButtonIcon(number)
    }


    function showResolution()
    {
        hideAll();
        state = "showResolution";
        resolution.showResolution();
    }

    function showFlash()
    {
        hideAll();
        state = "showFlash";
        flash.showFlash();
    }

    function showExposureComp()
    {
        hideAll();
        state = "showExposure";
        exposure.showExposureComp();
    }


    function hideAll()
    {
        state = "hide";
        resolution.hideResolution();
        flash.hideFlash();
        exposure.hideExposureComp();
    }

    states: [
        State {
            name: "showResolution"
            PropertyChanges {
                target: resolution
                x: 16
            }
            PropertyChanges {
                target: resolution
                state: "normal"
            }
        },
        State {
            name: "showFlash"
            PropertyChanges {
                target: flash
                x: parent.width - flash.width - 8
            }
            PropertyChanges {
                target: flash
                state: "normal"
            }
        },
        State {
            name: "showExposure"
            PropertyChanges {
                target: exposure
                x: 8
            }
            PropertyChanges {
                target: exposure
                state: "normal"
            }
        },
        State {
            name: "hide"
            PropertyChanges {
                target: resolution
                x: -500
            }
            PropertyChanges {
                target: resolution
                state: "rotate"
            }
            PropertyChanges {
                target: flash
                x: parent.width + 500
            }
            PropertyChanges {
                target: flash
                state: "rotate"
            }
        }
    ]

    transitions: [
        Transition {
            ParallelAnimation {
                NumberAnimation { properties: "x"; duration: 500; easing.type: Easing.InOutQuad }
            }
        }
    ]
}
