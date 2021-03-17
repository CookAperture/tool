import QtQuick 2.12
import QtQuick.Shapes 1.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Window 2.12

ApplicationWindow
{
    id: window
    width: 640
    height: 480
    visible: true
    title: "tool"
    flags: Qt.FramelessWindowHint

    //restore common usability//////////////////
    function toggleMaximized()
    {
            if (window.visibility === Window.Maximized) {
                window.showNormal();
            } else {
                window.showMaximized();
            }
    }

    DragHandler
    {
        id: resizeHandler
        grabPermissions: TapHandler.TakeOverForbidden
        target: null
        onActiveChanged: if (active) {
            const p = resizeHandler.centroid.position;
            let e = 0;
            if (p.x / width < 0.10) { e |= Qt.LeftEdge }
            if (p.x / width > 0.90) { e |= Qt.RightEdge }
            if (p.y / height < 0.10) { e |= Qt.TopEdge }
            if (p.y / height > 0.90) { e |= Qt.BottomEdge }
            console.log("RESIZING", e);
            window.startSystemResize(e);
        }
    }
    //////////////////////////////////////////

    menuBar: BasicToolBar{}
    Loader
    {
        id: pageLoader
        anchors.fill: parent
        source: "ui/" + qmlAdapter.view + ".qml"
    }
    SideBar{id:sidebar}
    //fooder: content goes here
}

//style : Component -> pls resesarch
