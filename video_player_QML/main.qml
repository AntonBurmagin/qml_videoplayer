import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("video player")
    property bool playing: false

    Image {
        id: screen
        source: "screen.jpg"
        width: 640
        height: 360
        anchors.horizontalCenter: parent.horizontalCenter
    }

    ProgressBar {
        id: videoProgress
        y: 375
        anchors.horizontalCenter: parent.horizontalCenter
        width: 630
        height: 10
    }

    Button {
        id: play
        Image {
            id: playImage
            source: "play.png"
            width: 160
            height: 78
        }
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: -80
        y: 400
        width: 160
        height: 78
        onClicked: {
            if (!playing) {
                playImage.source= "pause.png";
                playing = true;
            } else {
                playImage.source= "play.png";
                playing = false;
            }
        }
    }
    Button {
        id: stop
        Image {
            source: "stop.png"
            width: 160
            height: 78
        }
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: 80
        y: 400
        width: 160
        height: 78
        onClicked: {
            if (playing) {
                playImage.source = "play.png";
                playing = false;
            }
        }
    }
    Button {
        id: forward
        Image {
            source: "forward.png"
            width: 159
            height: 78
        }
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: 240
        y: 400
        width: 160
        height: 78
    }
    Button {
        id: back
        Image {
            source: "back.png"
            width: 160
            height: 78
        }
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: -240
        y: 400
        width: 160
        height: 78
    }
}
