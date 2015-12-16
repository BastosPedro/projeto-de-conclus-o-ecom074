import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import MyStorage 1.0

Grid{
    id: playScreen
    visible: false
    anchors.centerIn: parent
    spacing: 10
    columns: 1
    PropStorage{
        id: storage
        numX: setNumX(0)
        numY: setNumY(0)
    }
    Text{
        id:question
        color: "#FFAB00"
        text: qsTr("%1 + %2?").arg(storage.numX).arg(storage.numY)
        font.bold: true
        font.pixelSize: 50
    }
    TextField{
        id: awnser
        placeholderText: "resposta"
        height:question.height
        width:question.width
    }
}
