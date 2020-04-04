import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Extras 1.4

Page {
    width: 400
    height: 400

    title: qsTr("Hinja Care Medical")

    Label {
        width: 334
        height: 17
        text: qsTr("Do seu lado, cuidando da sua saúde!")
        font.bold: true
        font.pointSize: 12
        font.family: "Verdana"
        anchors.verticalCenterOffset: 136
        anchors.horizontalCenterOffset: 33
        renderType: Text.NativeRendering
        anchors.centerIn: parent










    }

    Image {
        id: image
        x: -14
        y: 18
        width: 374
        height: 303
        source: "images/HINJA_TI.png"
        fillMode: Image.PreserveAspectFit
        anchors.rightMargin: Page

    }

}
