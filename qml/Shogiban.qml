import QtQuick 2.0
import giban 1.0

Rectangle {
    id: container

    property int rowCount: 9
    property int columnCount: 9
    property alias cellWidth: gridView.cellWidth
    property alias cellHeight: gridView.cellHeight

    width: columnCount * cellWidth
    height: rowCount * cellHeight

    GridView {
        id: gridView

        anchors.fill: parent

        cellWidth: 80
        cellHeight: 80

        Component {
            id: shogibanDelegate

            Piece {
                id: piece

                width: container.cellWidth
                height: container.cellHeight

                type: model.type
            }

        }

        model: shogibanModel

        delegate: shogibanDelegate
    }
}
