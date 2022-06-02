import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.3
import QtQuick.Window 2.10
import QtGraphicalEffects 1.0
import QtQuick.Controls.Material 2.1

Dialog {
    id: root

    height: 1000
    width: 530

    signal openDashBoardScreen

    DashBoardScreen {
        id: dashBoardScreen
    }

    function checkValidEmail(){
        var emailString = "vansy999@gmail.com";
        emailString = emailString.slice(-10)

        if(email.text.slice(-10) != emailString && email.text.slice(-10) != ""){
            emailValid.visible = true
        }else{
            emailValid.visible = false
        }
    }


    function checkValidPass(){
        if(passWord.text.length > 5 && passWord.text.length < 19){
            console.log("length of password", passWord.text.length)
        }
    }


    Frame{
        id: frameSignUpScreen
        visible: true
        Layout.fillWidth: true
        background: Rectangle {
            color: "#ffffff"
            opacity: 0.8

            border.color: "#bcbcbc"
            radius: 10
        }
        ColumnLayout{
            id: columnLayoutOption

            anchors.fill: parent

            spacing: 20
            RowLayout{
                Layout.fillWidth: true
                spacing: 0
                Column{
                    Image {
                        id: imageSignUp
                        source: "qrc:/images/signin.png"
                        visible: true
                        width: 500
                        height: 200
                    }
                    Label{
                        text: qsTr("Welcome to Entrance Test Interview")
                        font.pointSize: 20
                        topPadding: 100
                    }
                    Label{
                        text: qsTr("Please sign-in to your account to start the adventure")
                        font.pointSize: 15
                    }
                }
            }
            ColumnLayout{
                spacing: 20
                Column{
                    Label{
                        text: "<font color=\"#000000\">Email</font> <font color=\"#FF0000\">*</font>"
                        font.pointSize: 15
                    }
                    TextField{
                        id: email
                        width: 500
                        text: ""
                        placeholderText: enabled ? qsTr("Please enter your email") : ""
                        font.pointSize: 15
                        background: Rectangle{
                            radius: 5
                            border.width: 0.5
                        }
                    }
                    Label{
                        id: emailRequired
                        text: qsTr("Email is required")
                        color: "red"
                        visible: email.text === ""
                        font.pointSize: 15
                    }

                    Label{
                        id: emailValid
                        text: qsTr("Email is not valid")
                        color: "red"
                        visible: false
                        font.pointSize: 15
                    }
                }
                Column{
                    Row{
                        Label{
                            text: "<font color=\"#000000\">Password</font> <font color=\"#FF0000\">*</font>"
                            font.pointSize: 15
                            rightPadding: 240
                        }

                        Label{
                            text: qsTr("Forgot Password?")
                            horizontalAlignment: Text.AlignRight
                            font.pointSize: 15
                            color: "#7367F0"

                        }
                    }

                    TextField{
                        id: passWord
                        width: 500
                        text: ""
                        placeholderText: enabled ? qsTr("Please enter your password") : ""
                        font.pointSize: 15
                        background: Rectangle{
                            radius: 5
                            border.width: 0.5
                        }
                        echoMode: TextInput.Password
                    }
                    Label{
                        id: passwordRequired
                        text: passWord.text.length === 0 ? ("Password is required") :
                              passWord.text.length < 4 ? ("Password is week") :
                              passWord.text.length > 4 && passWord.text.length < 7 ? ("<font color=\"#E3A063\">Password is fair</font>") :
                              passWord.text.length > 8 && passWord.text.length < 12 ? ("<font color=\"#8B9FFF\">Password is good</font>") :
                              passWord.text.length > 12 ? ("<font color=\"#59BC87\">Password is strong</font>") : ""
                        color: "red"
                        visible: true
                        font.pointSize: 15
                    }
                }
            }
            Row{
                CheckBox{
                    visible: true
                    text: qsTr("Remember me")
                    font.pointSize: 15
                }
            }

            Button {
                id: btnSignUp
                text: qsTr("Login")
                font.pointSize: 15

                contentItem: Text {
                    text: btnSignUp.text
                    font: btnSignUp.font
                    opacity: enabled ? 1.0 : 0.3
                    color: btnSignUp.down ? "#ffffff" : "#ffffff"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    implicitWidth: 500
                    implicitHeight: 40
                    opacity: enabled ? 1 : 0.3
                    border.color: btnSignUp.down ? "#17a81a" : "#21be2b"
                    border.width: 1
                    radius: 5
                    color: "#7367F0"
                }
                onClicked: {
                    if(email.text == "" || passWord.text == ""){
                        checkValidEmail()
                        checkValidPass()
                    }else if(email.text.slice(-10) != "@gmail.com"){
                        checkValidEmail()
                        checkValidPass()
                    }else{
                        checkValidEmail()
                        checkValidPass()
                        openDashBoardScreen()
                        root.close()
                    }
                }
            }

        RowLayout{
            Column{
                Label{
                    leftPadding: 50
                    text: "<font color=\"#000000\">New on our platform?</font> <font color=\"#7367F0\">Create an account</font>"
                    font.pointSize: 15
                    }
                Label{
                    text: qsTr("Or")
                    font.pointSize: 15
                    leftPadding: 220
                }
                Row{
                    leftPadding: 90
                    topPadding: 20
                    spacing: 30
                    Image {
                        id: fbIcon
                        width: 60
                        height: 60
                        source: "qrc:/images/Facebook-icon.png"
                    }

                    Image {
                        id: twitterIcon
                        width: 60
                        height: 60
                        source: "qrc:/images/Twitter-icon.png"
                    }

                    Image {
                        id: emailIcon
                        width: 60
                        height: 60
                        source: "qrc:/images/Email-icon.png"
                    }
                    Image {
                        id: con
                        width: 60
                        height: 60
                        source: "qrc:/images/icon.png"
                    }
                }
                }
            }
        }
    }
}
