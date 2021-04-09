import QtQuick 2.12
import QtQuick.Shapes 1.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Window 2.12

Page {
    anchors.margins: 0
    header: ToolBar {
        contentHeight: toolButton.implicitHeight
        Item {
            anchors.fill: parent
            TapHandler {
                onTapped: if (tapCount === 2) toggleMaximized()
                gesturePolicy: TapHandler.DragThreshold
            }
            DragHandler {
                grabPermissions: TapHandler.CanTakeOverFromAnything
                onActiveChanged: if (active) { window.startSystemMove(); }
            }

            RowLayout {
                anchors.left: parent.left
                ToolButton {
                    id: toolButton
                    text: "\u2630"
                    font.pixelSize: Qt.application.font.pixelSize * 1.6
                    onClicked: sidebar.open()
                    ToolTip.text: "Opens a SideBar!"
                    ToolTip.delay: 1
                    ToolTip.visible: hovered
                }
            }
            RowLayout {
                spacing: 0
                anchors.right: parent.right
                anchors.rightMargin: 5
                TextField {
                    placeholderText: "search..."
                    ToolTip.text: "search..."
                    ToolTip.delay: 1
                    ToolTip.visible: hovered
                }
                ToolButton {
                    text: "🗕"
                    font.pixelSize: Qt.application.font.pixelSize * 1.6
                    onClicked: window.showMinimized();
                    ToolTip.text: "hide/show"
                    ToolTip.delay: 1
                    ToolTip.visible: hovered
                }
                ToolButton {
                    text: window.visibility == Window.Maximized ? "🗗" : "🗖"
                    font.pixelSize: Qt.application.font.pixelSize * 1.6
                    onClicked: window.toggleMaximized()
                    ToolTip.text: "minimize/maximize"
                    ToolTip.delay: 1
                    ToolTip.visible: hovered
                }
                ToolButton {
                    text: "🗙"
                    font.pixelSize: Qt.application.font.pixelSize * 1.6
                    onClicked: window.close()
                    ToolTip.text: "close"
                    ToolTip.delay: 1
                    ToolTip.visible: hovered
                }
            }
        }
    }
}
