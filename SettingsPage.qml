import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Dialogs 1.0
SettingsPageForm {
    id:settings_page
    FileDialog{
        id: fileDialog
        title: "Please choose a backgound image"
        nameFilters: [ "Image files (*.jpg *.png)", "All files (*)" ]
        folder: shortcuts.home
    }
    Button {
        id: button1
        x: 125
        y: 41
        width: 56
        height: 21
        text: "..."
        onClicked:{
                fileDialog.open()
        }
    }

    Label {
        id: label1
        x: 35
        y: 41
        width: 76
        height: 21
        text: qsTr("Background")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

}
