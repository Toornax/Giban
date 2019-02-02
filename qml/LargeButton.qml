import QtQuick 2.0

Item {
    id: container

    property color color: "#ccc"
    property color hoverColor: "#bbd"
    property color clickedColor: "#aac"
    property string title: "Button"

    property color bgColor1: color
    property color bgColor2: Qt.lighter(color, 1.1)

    MouseArea {
        id: button
        anchors.fill: parent
        hoverEnabled: true

        onEntered: {
            container.bgColor1 = container.hoverColor
            container.bgColor2 = Qt.lighter(container.hoverColor, 1.1)
        }

        onExited:{
            container.bgColor1 = container.color
            container.bgColor2 = Qt.lighter(container.color, 1.1)
        }

        onPressed: {
            container.bgColor1 = container.clickedColor
            container.bgColor2 = Qt.lighter(container.clickedColor, 1.1)
        }

        onReleased: {
            container.bgColor1 = container.color
            container.bgColor2 = Qt.lighter(container.color, 1.1)
        }

        Rectangle {
            id: rectangle
            radius: 20
            anchors.fill: parent

            gradient: Gradient {
                GradientStop { position: 0 ; color: container.bgColor1 }
                GradientStop { position: 1 ; color: container.bgColor2 }
            }

            Text {
                id: txt
                text: title
                anchors.fill: parent
                lineHeight: 0.9
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                fontSizeMode: Text.HorizontalFit
            }
        }
    }
}
