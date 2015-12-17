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
    /*PropStorage{
        id: storage
        numX: setNumX(parseInt(0))
        numY: setNumY(parseInt(0))
    }*/
    Text{
        id:question
        color: "#FFAB00"
        text: qsTr("%1 + %2?").arg(storage.numX).arg(storage.numY)
        font.bold: true
        font.pixelSize: 50
    }
    TextField{
        function compare(){
            if(storage.numX + storage.numY == storage.input){
                storage.score++;
                storage.setNumX(parseInt(0));
                storage.setNumY(parseInt(0));
                awnser.text = "";
            }
            else{
                awnser.text = "";
                storage.resetFlag = true;
            }
        }
        id: awnser
        placeholderText: "resposta"
        height:question.height
        width:question.width
        readOnly: storage.resetFlag ? true : false
        Keys.onReturnPressed: {
            storage.input = parseInt(awnser.text)
            compare()
        }
    }
    Text{
        id:scoreOnScreen
        visible:true
        color: "#FFAB00"
        font.pixelSize: 25
        font.bold: true
        text: storage.resetFlag? "Errou!" : qsTr("%1 acerto(s)").arg(storage.score)
    }
}
