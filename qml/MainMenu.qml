import QtQuick 2.0

Item {
    id: container

    property color buttonColor: "#ccc"

    Column {
        id: columnLayout
        y: 27
        width: 200
        height: 400
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 10

        Text {
            id: title
            text: qsTr("Main Menu")
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 12
        }

        Rectangle {
            id: spacer
            height: 10
            color: "#00000000"
            border.color: "#00000000"
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
        }

        LargeButton {
            id: buttonShogi
            height: 40
            anchors.right: parent.right
            anchors.left: parent.left

            title: qsTr("Play Shogi")
            color: "#ccc"
        }

        LargeButton {
            id: buttonGo
            anchors.right: parent.right
            anchors.left: parent.left
            height: 40

            title: qsTr("Play Go")
            color: "#ccc"
        }

        LargeButton {
            id: buttonChess
            anchors.right: parent.right
            anchors.left: parent.left
            height: 40

            title: qsTr("Play Chess")
            color: "#ccc"
        }

        LargeButton {
            id: buttonOptions
            anchors.right: parent.right
            anchors.left: parent.left
            height: 40

            title: qsTr("Options")
            color: "#ccc"
        }

        LargeButton {
            id: buttonQuit
            anchors.right: parent.right
            anchors.left: parent.left
            height: 40

            title: qsTr("Quit")
            color: "#ccc"
        }
    }
}

/*##^## Designer {
    D{i:23;anchors_width:200}D{i:4;anchors_height:200;anchors_width:200;anchors_x:0;anchors_y:0}
D{i:7;anchors_width:100}D{i:11;anchors_height:200;anchors_width:200;anchors_x:0;anchors_y:0}
D{i:10;anchors_width:100;invisible:true}D{i:13;anchors_height:200;anchors_width:200;anchors_x:0;anchors_y:0}
D{i:12;anchors_width:100;invisible:true}D{i:15;anchors_height:200;anchors_width:200;anchors_x:0;anchors_y:0}
D{i:14;anchors_width:100;invisible:true}D{i:17;anchors_height:200;anchors_width:200;anchors_x:0;anchors_y:0}
D{i:16;anchors_width:100;invisible:true}D{i:1;anchors_height:400;anchors_width:200;anchors_x:206;anchors_y:27}
}
 ##^##*/
