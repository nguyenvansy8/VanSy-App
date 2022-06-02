import QtQuick 2.10
import QtQuick.Extras 1.4
import QtQuick.Dialogs 1.3
import QtQuick.Layouts 1.3
import QtQuick.Window 2.10
import QtQuick.Controls 2.3
import QtQuick.Controls.Material 2.1
import QtMultimedia 5.4
import QtGraphicalEffects 1.0

Dialog {
    id: root
    focus: true
    modal: true
    padding: (20)
    Layout.fillWidth: true

    width: 530
    height: 1000

    NavigationBar {
        id: navigationBar
    }

    Frame {
        ColumnLayout{
            anchors.fill: parent
            RowLayout{
                Layout.fillWidth: true
                Image {
                    id: menu
                    source: "qrc:/images/menu.png"
                    Layout.preferredWidth: 50
                    Layout.preferredHeight: 50
                    MouseArea {
                        anchors.fill: parent

                        hoverEnabled: true
                        cursorShape: Qt.PointingHandCursor

                        onClicked: {
                            console.log("menu has been clicked")
                            navigationBar.open()
                        }
                    }
                }

                Item {
                    width: 250
                }

                Column{
                    Label{
                        text: "Admin"
                        font.pointSize: 15
                    }
                    Label{
                        text: "Available"
                        font.pointSize: 12
                    }
                }

                Image {
                    id: account
                    source: "qrc:/images/Account.png"
                    Layout.preferredWidth: 50
                    Layout.preferredHeight: 50
                }
            }
            RowLayout{
                Image {
                    id: dashBoardScreen
                    source: "qrc:/images/dashboard.png"
                    Layout.preferredWidth: 470
                    Layout.preferredHeight: 800
                }
            }
        }
    }
}
