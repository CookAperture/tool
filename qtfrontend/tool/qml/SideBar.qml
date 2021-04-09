import QtQuick 2.12
import QtQuick.Shapes 1.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Window 2.12

Drawer
{
   id: sidebar
   width: window.width * 0.33
   height: window.height
   interactive: true
   Label
   {
       text: "Content goes here!"
       anchors.centerIn: parent
   }
}
