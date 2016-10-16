import QtQuick 2.7
import QtQuick.Controls 1.4
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    id: applicationWindow1
    visible: true
    width: 640
    height: 480
    title: qsTr("List it !")
    font.family: "Comic Sans MS"

    SwipeView {
        id: swipeView
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        anchors.left: parent.left
        currentIndex: tabBar.currentIndex
        background: Rectangle{
            color:"#e1851c"
        }

        ListPage {

        }

        SettingsPage {

        }
    }

    header: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        height: 20
        background: Rectangle{
            color:"#e1851c"
        }
        TabButton {
            id:listtab
            text: qsTr("List")
            height:parent.height
        }
        TabButton {
            id:settingstab
            text: qsTr("Settings")
            height:parent.height
        }
    }
}
