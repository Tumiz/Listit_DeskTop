import QtQuick 2.7
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.0
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0
ListPageForm {
    id: list_page

    GridLayout {
        id: listpage_layout
        anchors.leftMargin: 5
        anchors.rightMargin: 5
        anchors.bottomMargin: 5
        anchors.topMargin: 5
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        anchors.left: parent.left
        rows: 2
        columns: 3

        ListView {
            id: list
            width: 100
            spacing: 2
            clip: false
            orientation: ListView.Vertical
            highlightRangeMode: ListView.StrictlyEnforceRange
            keyNavigationWraps: false
            contentHeight: 300
            contentWidth: 0
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.rowSpan: 3
            Layout.columnSpan: 1
            Layout.row:0
            Layout.column: 0
            model:list_mod

            delegate: Rectangle{
                    width:list.width
                    height:30
                    color:"skyblue"
                    border.color: "black"
                    border.width: 2

                    Text{
                        leftPadding: 2
                        text:content
                        font.bold: true
                        font.pixelSize: 20
                        color:"white"
                    }
                }
        }
        ListModel {
            id:list_mod
            ListElement {
                content:"list is here"
            }
        }
        Button {
            id: btn_new
            width: 100
            text: "New"
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            Layout.preferredHeight: 30
            Layout.preferredWidth: 60
            Layout.fillWidth: true
            rotation: 0
            Layout.fillHeight: false
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Layout.row:0
            Layout.column: 2
            transformOrigin: Item.Center
            onClicked:{
                list_mod.append({"content":textarea.text})
            }

            background: Rectangle{
                radius:3
                color:btn_new.pressed?"green":"lightgreen"
                border.color:"black"
                border.width: 2
            }

        }

        Button {
            id: btn_delete
            width: 100
            text:"Delete"
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            Layout.preferredHeight: 30
            Layout.preferredWidth: 60
            clip: false
            scale: 1
            rotation: 0
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Layout.row:1
            Layout.column: 2
            Layout.fillHeight: false
            Layout.fillWidth: true
            onClicked:{
                list_mod.remove(list.currentIndex)
            }
            background: Rectangle{
                radius:3
                color:btn_delete.pressed?"green":"lightgreen"
                border.color:"black"
                border.width: 2
            }
        }

        TextArea {
            id: textarea
            x: 301
            y: 136
            width: 400
            Layout.preferredWidth: 400
            verticalAlignment: Text.AlignTop
            horizontalAlignment: Text.AlignLeft
            wrapMode: Text.WordWrap
            Layout.rowSpan: 3
            Layout.columnSpan: 1
            Layout.row:0
            Layout.column: 1
            Layout.fillWidth: true
            Layout.fillHeight: true
            background:  DropShadow {
                horizontalOffset: 1
                verticalOffset: 1
                radius: 4
                color: "#80000000"
                source:  image
            }
            BorderImage{
                id:image
                anchors.fill: parent
                z:-1
                source: "Sources/EditBack.jpg"
            }
        }
    }
}
