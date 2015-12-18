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
        text: qsTr("Melhor pontuação")
        color: "#FFAB00"
        font.pixelSize: 35
        font.bold: true
    }
    Text{
        id: name
        text: storage.highScore? qsTr("Nome:").arg(storage.highName) : qsTr("Sem recorde ainda!")
        color: "#FFAB00"
        font.pixelSize: 25
        font.bold: true
    }
    Text{
        id: score
        visible: storage.highScore? true: false
        text: qsTr("Acertos: %1").arg(storage.highScore)
        color: "#FFAB00"
        font.pixelSize: 25
        font.bold: true
    }
}
