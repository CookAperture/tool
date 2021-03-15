import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow
{
    width: 640
    height: 480
    visible: true
    title: "tool"

    // contentItem : Item
    //menuBar : MenuBar
    //statusBar : Item
    //toolBar : Item

    //style : Component -> pls resesarch
    Loader
    {
        id: pageLoader
        anchors.fill: parent
        source: "ui/" + qmlAdapter.view + ".qml"
    }
}
