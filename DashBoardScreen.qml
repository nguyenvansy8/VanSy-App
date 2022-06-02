import QtQuick 2.10
import QtQuick.Dialogs 1.3
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtQuick.Extras 1.4
import QtQuick.Window 2.10
Dialog {
    id: root
    focus: true
    modal: true
    padding: (20)
    Layout.fillWidth: true

    Layout.preferredWidth: 530
    height: 1000

    header: Frame {
        padding: (10)

        background: Rectangle {
            color: "#00a8ff"
            border.color: "transparent"
            radius: 0
        }
        RowLayout{
            Label{
                text: "nguyen van sy"
            }
        }
    }
}
