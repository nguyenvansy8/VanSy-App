import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.3
import QtQuick.Window 2.10
import QtGraphicalEffects 1.0
import QtQuick.Controls.Material 2.1

import "views"

Window {
    id: _root
    visible: true

    maximumWidth: 530
    maximumHeight: 1000

    minimumWidth: 530
    minimumHeight: 1000

//    x: width + (width / 3)
//    y: 30

    Connections {
        target: signInScreen
        onOpenDashBoardScreen : {
            dashBoardScreen.open();
        }
    }

//    Connections{
//        target: dashBoardScreen
//        onOpenSignInScreen : {
//            signInScreen.open()
//        }
//    }

    DashBoardScreen {
        id: dashBoardScreen
    }

    SignInScreen{
        id: signInScreen
    }

function checkNameEmailPass(){
    if(firstName.text == "")
        firstNameRequired.visible = true
    else
        firstNameRequired.visible = false

    if(lastName.text == "")
        lastNameRequired.visible = true
    else
        lastNameRequired.visible = false

    if(email.text == "")
        emailRequired.visible = true
    else
        emailRequired.visible = false

    if(passWord.text == "")
        passwordRequired.visible = true
    else
        passwordRequired.visible = false
}

function checkValidEmail(){
    var emailString = "vansy999@gmail.com";
////    myString = myString[myString.length -2];
//    emailString = emailString.substring(8, 18)
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
//        console.log("password", checkPassword)
//        passwordRequired.visible = true
    }
}

//function checkValidPass() {
////  pass = document.getElementById("password").value;
////  console.log(pass);
//  var regex = new RegExp(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/);
////  if (regex.exec(pass) === null) {
////    alert('invalid password!')
////  }
////  else {
////    console.log("valid");
////  }
//    console.log("password", regex)
//}



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
                        source: "qrc:/images/signup.png"
                        visible: true
                        width: 500
                        height: 200
                    }
                    Label{
                        text: qsTr("Adventure starts here")
                        font.pointSize: 20
                    }
                    Label{
                        text: qsTr("Make your app management easy and fun")
                        font.pointSize: 15
                    }
                }
            }
            ColumnLayout{
                spacing: 20
                Column{
                    Label{
                        text: "<font color=\"#000000\">First name</font> <font color=\"#ff0000\">*</font>"
                        font.pointSize: 15
                    }
                    TextField{
                        id: firstName
                        width: 500
                        text: ""
                        placeholderText: enabled ? qsTr("Please enter your first name") : ""
                        font.pointSize: 15
                        background: Rectangle{
                            radius: 5
                            border.width: 0.5
                        }
                    }
                    Label{
                        id: firstNameRequired
                        text: qsTr("First name is required")
                        font.pointSize: 15
                        color: "red"
                        visible: firstName.text == ""
                    }
                }
                Column{
                    Label{
                        text: "<font color=\"#000000\">Last name</font> <font color=\"#ff0000\">*</font>"
                        font.pointSize: 15
                        Layout.row: 1
                        Layout.column: 2
                    }
                    TextField{
                        id: lastName
                        width: 500
                        text: ""
                        placeholderText: enabled ? qsTr("Please enter your last name") : ""
                        font.pointSize: 15
                        background: Rectangle{
                            radius: 5
                            border.width: 0.5
                        }
                    }
                    Label{
                        id: lastNameRequired
                        text: qsTr("Last name is required")
                        color: "red"
                        visible: lastName.text == ""
                        font.pointSize: 15
                    }
                }
                Column{
                    Label{
                        text: "<font color=\"#000000\">Email</font> <font color=\"#ff0000\">*</font>"
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
                        visible: email.text == ""
                        font.pointSize: 15
                    }

                    Label{
                        id: emailValid
                        text: qsTr("Email is not valid")
                        color: "red"
                        visible: false
//                        visible: false
                        font.pointSize: 15
                    }
                }
                Column{
                    Label{
                        text: "<font color=\"#000000\">Password</font> <font color=\"#ff0000\">*</font>"
                        font.pointSize: 15
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
                        visible: passWord.text == ""// && btnSignUp.checked
                        font.pointSize: 15
                    }
                }
            }
            Row{
                CheckBox{
                    visible: true
//                    text: qsTr("i agree to privacy policy & terms")
                    text: qsTr("<font color=\"#000000\">i agree to </font> <font color=\"#7367F0\">privacy policy & terms</font>")
                    font.pointSize: 15
                }
            }

            Button {
                id: btnSignUp
                checked: false
                text: qsTr("Sign Up")
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
                    if(firstName.text == "" || lastName.text == "" || email.text == "" || passWord.text == ""){
                        checkNameEmailPass()
                        checkValidEmail()
                        checkValidPass()
                    }else if(firstName.text != "" && lastName.text != "" && email.text != "" && passWord.text != ""){
                        checkNameEmailPass()
                        if(email.text.slice(-10) != "@gmail.com"){
                            checkValidEmail()
                            checkValidPass()
                        }else{
                            checkValidEmail()
                            checkValidPass()
                            signInScreen.open()
                            _root.close()
                        }
//                        signInScreen.open()
//                        _root.close()
                    }

//                    signInScreen.open()
//                    _root.close()
//                    checkNameEmailPass()
//                    checkValidEmail()
//                    checkValidPass()
//                    console.log()

                }
            }

            RowLayout{
                Column{
                    Label{
                        leftPadding: 30
//                        text: qsTr("Already have an account? Sign in instead")
                        text: qsTr("<font color=\"#000000\">Already have an account? </font> <font color=\"#7367F0\">Sign in instead</font>")
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
