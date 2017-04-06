import QtQuick 2.8
import QtQuick.Controls 2.1

Page {
    id: page

    header: ToolBar {
        id: topbar

        contentItem: Label {
            text: "The List"
            font.pointSize: topbar.font.pointSize+5
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }

    AddItemDialog {
        id: aid
    }

    ListView {
        id: listview
        model: PlanModel
        anchors.fill: parent

        delegate: MainDelegate {
            text: textRole
            width: parent.width
            rel1Text: PlanManager.nameFromRel(rel1Role)
            rel2Text: PlanManager.nameFromRel(rel2Role)
        }

        ViewButton {
            text: "+"
            onClicked: aid.open()
        }
    }
}