import QtQuick 2.0
import giban 1.0

Item {
    id: container

    property int type: Giban.None
    property alias color: background.color
    property color borderColor: "black"

    signal clicked()

    Rectangle {
        id: background
        color: "#e7ab67"
        border.color: borderColor
        anchors.fill: parent

        Text {
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter

            text: toText(type)
        }
    }

    MouseArea {
        anchors.fill: parent
    }

    function toText(val) {
        if(val == Giban.King)
            return "King"
        else if(val == Giban.Jewel)
            return "Jewel"
        else if(val == Giban.Rook)
            return "Rook"
        else if(val == Giban.Bishop)
            return "Bishop"
        else if(val == Giban.Gold)
            return "Gold"
        else if(val == Giban.Silver)
            return "Silver"
        else if(val == Giban.Knight)
            return "Knight"
        else if(val == Giban.Lance)
            return "Lance"
        else if(val == Giban.Pawn)
            return "Pawn"
        return ""
    }
}
