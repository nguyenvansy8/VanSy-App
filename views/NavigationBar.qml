import QtQuick 2.10
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.3
import QtGraphicalEffects 1.0
import QtQuick.Controls.Material 2.2

Drawer {
    id: drawerVD

    signal openSignInScreen

    width: Math.min(_root.width, _root.height) / 3

    height: _root.height

    padding: 0

    background: Rectangle {
        color: "#ffffff"
    }

    Flickable {
        anchors.fill: parent

        clip: true
        interactive: false

        Column {
            id: myButtons
            focus: false

            anchors.left: parent.left
            anchors.right: parent.right

            anchors.fill: parent
            anchors.topMargin: 20

            spacing: (15)
            Row{
                Image {
                    id: logout
                    source: "qrc:/images/Logout.png"
                    width: 25
                    height: 25
                    MouseArea {
                        anchors.fill: parent

                        hoverEnabled: true
                        cursorShape: Qt.PointingHandCursor

                        onClicked: {
                            console.log("menu has been clicked")
                            openSignInScreen()
                            drawerVD.close()
//                            dashBoardScreen.close()
                        }
                    }
                }

                Label{
                    text: qsTr("Log Out")
                    font.pointSize: 15
                    verticalAlignment: Text.AlignVCenter
                }
            }
        }
    }
}
