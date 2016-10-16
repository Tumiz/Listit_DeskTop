import QtQuick 2.7
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.0
import QtQuick.Controls.Styles 1.4
ListPageForm {
    id: listPageForm1
    property alias listView1: listView1

    GridLayout {
        id: gridLayout1
        anchors.leftMargin: 5
        anchors.rightMargin: 5
        anchors.bottomMargin: 5
        anchors.topMargin: 5
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        anchors.left: parent.left
        rows: 8
        columns: 6

        ListView {
            id: listView1
            clip: false
            width:300
            height:30
            orientation: ListView.Vertical
            highlightRangeMode: ListView.StrictlyEnforceRange
            keyNavigationWraps: false
            contentHeight: 300
            contentWidth: 0
            Layout.fillWidth: true
            Layout.rowSpan: 8
            Layout.columnSpan: 5
            Layout.row: 0
            Layout.column: 0
            Layout.fillHeight: true
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
            delegate: Row{
                Text{
                    horizontalAlignment: Text.AlignRight
                    text:name
                    font.bold: true
                    font.pixelSize: 20
                }
            }
        }

        Button {
            id: btn_new
            width: 60
            text: "New"
            leftPadding: 8
            z: 0
            rotation: 0
            Layout.fillHeight: false
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Layout.row: 0
            Layout.column: 5
            Layout.fillWidth: true
            transformOrigin: Item.Center

            background: Rectangle{
                radius:3
                color:btn_new.pressed?"green":"lightgreen"
                border.color:"black"
                border.width: 2
            }

        }

        Button {
            id: btn_delete
            width: 60
            text:"Delete"
            clip: false
            scale: 1
            rotation: 0
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Layout.row: 1
            Layout.column: 5
            Layout.fillHeight: false
            Layout.fillWidth: true
            background: Rectangle{
                radius:3
                color:btn_delete.pressed?"green":"lightgreen"
                border.color:"black"
                border.width: 2
            }
        }

    }

}
