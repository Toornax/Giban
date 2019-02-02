import QtQuick 2.0

Item {
    GridView {
        id: gridView
        anchors.fill: parent
        transformOrigin: Item.Center
        cellHeight: 70
        delegate: Item {
            x: 5
            height: 50
            Column {
                Rectangle {
                    width: 40
                    height: 40
                    color: colorCode
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    x: 5
                    text: name
                    font.bold: true
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                spacing: 5
            }
        }
        model: ListModel {
            ListElement {
                name: "Grey"
                colorCode: "grey"
            }

            ListElement {
                name: "Red"
                colorCode: "red"
            }

            ListElement {
                name: "Blue"
                colorCode: "blue"
            }

            ListElement {
                name: "Green"
                colorCode: "green"
            }
        }
        cellWidth: 70
    }

}

/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:11;anchors_height:140;anchors_width:140;anchors_x:0;anchors_y:0}
}
 ##^##*/
