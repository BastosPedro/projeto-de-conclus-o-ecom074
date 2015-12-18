import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import MyStorage 1.0

ColumnLayout{
    id: leaderScreen
    visible: false
    anchors.centerIn: parent
    Text{
        id: title
        text: storage.highScore? qsTr("Melhor pontuação pertence a...") : qsTr("Sem recordes ainda!")
        color: "#FFAB00"
        font.pixelSize: 22
        font.bold: true
    }
    Text{
        id: name
        visible: storage.highScore? true : false
        text: (storage.highName + qsTr(", com %1 acerto(s)!").arg(storage.highScore))
        color: "#FFAB00"
        font.pixelSize: 22
        font.bold: true
    }
}
