import QtQuick 2.4
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.11
import QtQuick.Window 2.14

Page {
    id: page
    width: 400
    height: 400

    ColumnLayout {
        id: columnLayout
        anchors.fill: parent
        Layout.fillHeight: true
        Layout.fillWidth: true

        Label {
            id: label
            width: parent.width
            height: 20
            text: qsTr("TextEditor")
            Layout.maximumHeight: 40
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        ScrollView {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.maximumWidth: page.width - 20
            TextArea {
                id: textedit
                text: ""
                wrapMode: Text.WordWrap
                textFormat: Text.AutoText
                placeholderText: qsTr("Type something...")
            }
        }

        RowLayout {
            id: rowLayout
            Layout.fillHeight: true
            Layout.fillWidth: true
            spacing: 5

            Button {
                id: loadbtn
                height: 40
                text: qsTr("Load")
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                Layout.maximumHeight: 40
                Layout.fillHeight: true
                Layout.fillWidth: true
                rightPadding: 0
                leftPadding: 0
                padding: 0
                anchors.leftMargin: 0
            }

            Button {
                id: savebtn
                text: qsTr("Save")
                Layout.maximumHeight: 40
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorColor:"#ffffff";formeditorZoom:1.33}
}
##^##*/

