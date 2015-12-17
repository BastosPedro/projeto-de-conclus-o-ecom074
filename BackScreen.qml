import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import MyStorage 1.0

RowLayout{
    id:backScreen
    anchors.fill: parent
    anchors.margins: 10
    spacing: 10
    Rectangle{
        id: border
        anchors.fill:parent
        anchors.margins: parent
        radius: 4
        color:"#1565C0"
        Rectangle{
            id:mainMenu
            anchors.fill:parent
            anchors.margins: 10
            radius: 4
            color:"#1976D2"
            Text{
                id:author
                text: "by Pedro Bastos"
                font.pixelSize: parent.height * 0.015
                opacity: 0.6
                color: "#FFAB00"
                anchors.top: parent.top
            }
            Text{
                id: version
                text: "version 1.0"
                font.pixelSize: parent.height * 0.015
                opacity: 0.6
                color: "#FFAB00"
                anchors.top: author.bottom
            }
            Image{
                id:logo
                source:"qrc:/assets/giraffe_gold.png"
                sourceSize.width: allFather.width * 0.12
                sourceSize.height: allFather.height * 0.12
                fillMode: Image.PreserveAspectFit
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Rectangle{
                id:backButton
                visible: false
                anchors.right: parent.right
                anchors.top: parent.top
                border.width: mm(1.5)
                width: parent.width * 0.1
                height: parent.height * 0.1
                border.color: backArea.containsMouse ? "#FFC400" : "#FFAB00"
                color: backArea.containsMouse ? "#FFD740" : "#FFC400"
                radius: width
                Image{
                    id:backIcon
                    source: "qrc:/assets/arrow_gold.png"
                    sourceSize.width: allFather.width * 0.075
                    sourceSize.height: allFather.height * 0.075
                    fillMode: Image.PreserveAspectFit
                    anchors.bottom: parent.bottom
                    anchors.centerIn: parent
                }
                MouseArea{
                    id:backArea
                    anchors.fill: parent
                    enabled: true
                    hoverEnabled: true
                    onClicked: {
                        mainScreen.visible = true
                        helpScreen.visible = false
                        backButton.visible = false
                        playScreen.visible = false
                        parent.reset()
                    }
                }
                function reset(){
                    storage.score = 0
                    storage.setNumX(parseInt(0))
                    storage.setNumY(parseInt(0))
                    storage.errorFlag = false
                    storage.timeOutFlag = true
                    timeAux.restart()
                }
            }
            
            MainScreen {
                id: mainScreen
            }
            HelpScreen {
                id: helpScreen
            }
            PlayScreen {
                id: playScreen
            }
        }
    }
}
