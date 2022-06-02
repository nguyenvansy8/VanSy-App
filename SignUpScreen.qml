import QtQuick 2.10
import QtQuick.Dialogs 1.3
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtQuick.Extras 1.4
import QtQuick.Window 2.10
import QtMultimedia 5.4

Dialog {
    id: root
    focus: true
    modal: true
    Layout.fillWidth: true
    Layout.preferredWidth: 530
    height: 1000


//    Connections{
//        target: signInScreen
//        onOpenSignInScreen:{
//            signInScreen.open()
//        }
//    }

//    SignInScreen{
//        id: signInScreen
//    }

//    signal openSignInScreen()

//    visible: true
//    maximumWidth: 530
//    minimumWidth: 530
//    maximumHeight: 1000
//    minimumHeight: 1000
//    height: 1000
//    width: 530


//    x: width + (width / 3)
//    y: 30


    header: Frame{
        spacing: 10
        background: Rectangle {
            color: "#00a8ff"
            border.color: "transparent"
            radius: 0
        }

        RowLayout{
            spacing: 30
            Label{
                text: "Nguyen Van Sy"
            }
        }
    }
//    Frame{
//        Layout.fillWidth: true
//        background: Rectangle {
//            color: "#ffffff"
//            opacity: 0.8

//            border.color: "#bcbcbc"
//            radius: 10
//        }
//        ColumnLayout{
//            id: columnLayoutOption

//            anchors.fill: parent

//            spacing: 20
//            RowLayout{
//                Layout.fillWidth: true
//                spacing: 0
//                Column{
//                    Image {
//                        id: imageSignUp
//                        source: "qrc:/images/signup.png"
//                        visible: true
//                        width: 500
//                        height: 200
//                    }
//                    Label{
//                        text: qsTr("Adventure starts here")
//                        font.pointSize: 20
//                    }
//                    Label{
//                        text: qsTr("Make your app management easy and fun")
//                        font.pointSize: 15
//                    }
//                }
//            }
//            ColumnLayout{
//                spacing: 20
//                Column{
//                    Label{
//                        text: qsTr("First name*")
//                        font.pointSize: 15
//                    }
//                    TextField{
//                        id: firstName
//                        width: 500
//                        text: ""
//                        placeholderText: enabled ? qsTr("Please enter your first name") : ""
//                        font.pointSize: 15
//                        background: Rectangle{
//                            radius: 5
//                            border.width: 0.5
//                        }
//                    }
//                    Label{
//                        text: qsTr("First name is required")
//                        font.pointSize: 15
//                        color: "red"
//                        visible: firstName.text === ""
//                    }
//                }
//                Column{
//                    Label{
//                        text: qsTr("Last name*")
//                        font.pointSize: 15
//                        Layout.row: 1
//                        Layout.column: 2
//                    }
//                    TextField{
//                        id: lastName
//                        width: 500
//                        text: ""
//                        placeholderText: enabled ? qsTr("Please enter your last name") : ""
//                        font.pointSize: 15
//                        background: Rectangle{
//                            radius: 5
//                            border.width: 0.5
//                        }
//                    }
//                    Label{
//                        text: qsTr("Last name is required")
//                        color: "red"
//                        visible: lastName.text === ""
//                        font.pointSize: 15
//                    }
//                }
//                Column{
//                    Label{
//                        text: qsTr("Email*")
//                        font.pointSize: 15
//                    }
//                    TextField{
//                        id: email
//                        width: 500
//                        text: ""
//                        placeholderText: enabled ? qsTr("Please enter your email") : ""
//                        font.pointSize: 15
//                        background: Rectangle{
//                            radius: 5
//                            border.width: 0.5
//                        }
//                    }
//                    Label{
//                        id: emailRequired
//                        text: qsTr("Email is required")
//                        color: "red"
//                        visible: email.text === ""
//                        font.pointSize: 15
//                    }
//                }
//                Column{
//                    Label{
//                        text: qsTr("Password*")
//                        font.pointSize: 15
//                    }
//                    TextField{
//                        id: passWord
//                        width: 500
//                        text: ""
//                        placeholderText: enabled ? qsTr("Please enter your password") : ""
//                        font.pointSize: 15
//                        background: Rectangle{
//                            radius: 5
//                            border.width: 0.5
//                        }
//                    }
//                    Label{
//                        id: passwordRequired
//                        text: passWord.text.length === 0 ? qsTr("Password is required") :
//                              passWord.text.length < 4 ? qsTr("Password is week") :
//                              passWord.text.length > 4 || passWord.text.length < 7 ? qsTr("Password is fair") :
//                              passWord.text.length > 8 ? qsTr("Password is good") : ""
//                        color: "red"
//                        visible: true
//                        font.pointSize: 15
//                    }
//                }
//            }
//            Row{
//                CheckBox{
//                    visible: true
//                    text: qsTr("i agree to privacy policy & terms")
//                    font.pointSize: 15
//                }
//            }

//            Button {
//                id: btnSignUp
//                text: qsTr("Sign Up")
//                font.pointSize: 15

//                contentItem: Text {
//                    text: btnSignUp.text
//                    font: btnSignUp.font
//                    opacity: enabled ? 1.0 : 0.3
//                    color: btnSignUp.down ? "#ffffff" : "#ffffff"
//                    horizontalAlignment: Text.AlignHCenter
//                    verticalAlignment: Text.AlignVCenter
//                    elide: Text.ElideRight
//                }

//                background: Rectangle {
//                    implicitWidth: 500
//                    implicitHeight: 40
//                    opacity: enabled ? 1 : 0.3
//                    border.color: btnSignUp.down ? "#17a81a" : "#21be2b"
//                    border.width: 1
//                    radius: 5
//                    color: "#7367F0"
//                }
//                onClicked: {
//                    if(passWord.text == ""){
//                        openSignInScreen()
//                        root.close()
//                    }
//                console.log("button has been clicked")
//                }
//            }

//            RowLayout{
//                Label{
//                    leftPadding: 20
//                    text: qsTr("Already have an account? Sign in instead")
//                    font.pointSize: 15
//                }
//            }
//        }
//    }
}
