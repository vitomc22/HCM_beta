import QtQuick 2.14
import QtQuick.Controls 2.14

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hinja Care Medical")

    header: ToolBar {
        contentHeight: toolButton.implicitHeight

        ToolButton {
            id: toolButton
            text: stackView.depth > 1 ? "\u25C0" : "\u2630"
            font.pixelSize: Qt.application.font.pixelSize * 1.6
            onClicked: {
                if (stackView.depth > 1) {
                    stackView.pop()
                } else {
                    drawer.open()
                }
            }
        }

        Label {
            text: stackView.currentItem.title
            anchors.centerIn: parent
        }
    }

    Drawer {
        id: drawer
        width: window.width * 0.66
        height: window.height

        Column {
            anchors.fill: parent

            ItemDelegate {
                text: qsTr("agenda de Consultas")
                width: parent.width
                onClicked: {
                    stackView.push("Page1Form.ui.qml")
                    drawer.close()

                }
                Rectangle {
                    anchors.right: parent.right
                    anchors.top: parent.top
                    width:10;
                    height:10;
                    color: "blue"
                    RotationAnimation on rotation {
                        loops: Animation.Infinite
                        from: 0
                        to: 360
                        duration: 800

                    }
                }

            }
            ItemDelegate {
                text: qsTr("Agenda de Exames")
                width: parent.width
                onClicked: {
                    stackView.push("Page2Form.ui.qml")
                    drawer.close()

                }
                Rectangle {
                    anchors.right: parent.right
                    anchors.top: parent.top
                    width:10;
                    height:10;
                    color: "blue"
                    RotationAnimation on rotation {
                        loops: Animation.Infinite
                        from: 0
                        to: 360
                        duration: 800
                    }
                }



            }
                ItemDelegate {
                    text: qsTr("Gerenciamento de Senhas")
                    width: parent.width
                    onClicked: {
                        stackView.push("Page2Form.ui.qml")
                        drawer.close()
                    }
                    Rectangle {
                        anchors.right: parent.right
                        anchors.top: parent.top
                        width:10;
                        height:10;
                        color: "blue"
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 0
                            to: 360
                            duration: 800
                        }
                    }
                }
                ItemDelegate {
                    text: qsTr("Resultado de Exames")
                    width: parent.width
                    onClicked: {
                        stackView.push("Page2Form.ui.qml")
                        drawer.close()
                    }
                    Rectangle {
                        anchors.right: parent.right
                        anchors.top: parent.top
                        width:10;
                        height:10;
                        color: "blue"
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 0
                            to: 360
                            duration: 800
                        }
                    }
                }
                ItemDelegate {
                    text: qsTr("Resultado de Exames")
                    width: parent.width
                    onClicked: {
                        stackView.push("Page2Form.ui.qml")
                        drawer.close()
                    }
                    Rectangle {
                        anchors.right: parent.right
                        anchors.top: parent.top
                        width:10;
                        height:10;
                        color: "blue"
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 0
                            to: 360
                            duration: 800
                        }
                    }
                }
                ItemDelegate {
                    text: qsTr("Unidades Hinja")
                    width: parent.width
                    onClicked: {
                        stackView.push("Page2Form.ui.qml")
                        drawer.close()
                    }
                    Rectangle {
                        anchors.right: parent.right
                        anchors.top: parent.top
                        width:10;
                        height:10;
                        color: "blue"
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 0
                            to: 360
                            duration: 800
                        }
                    }
                }
                }
            }




    StackView {
        id: stackView
        initialItem: "HomeForm.ui.qml"
        anchors.fill: parent
    }
}
