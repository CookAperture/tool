import QtQuick 6.0
import QtQuick.Controls 6.0
import QtQuick.Layouts 6.0

Page {
    SwipeView {
        id: view

        currentIndex: 1
        anchors.fill: parent

        Page1Form {}
        Page2Form {}
    }

    PageIndicator {
        id: indicator

        count: view.count
        currentIndex: view.currentIndex

        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
