import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import MyStorage 1.0

ColumnLayout{
    id: mainScreen
    anchors.centerIn:parent
    visible: true
    Text{
        id:title
        text: "Math Master"
        font.pixelSize: 35
        font.bold: true
        color: "#FFAB00"
    }
    
    Grid{
        spacing: 8
        columns: 2
        Rectangle{
            id: playButton
            implicitHeight: title.width/2
            implicitWidth: title.width/2
            border.width: mm(2.5)
            border.color: playArea.containsMouse ? "#FFC400" : "#FFAB00"
            color: playArea.containsMouse ? "#FFD740" : "#FFC400"
            radius: width
            Image{
                id:playIcon
                source:"qrc:/assets/play_gold.png"
                sourceSize.width: allFather.width * 0.12
                sourceSize.height: allFather.height * 0.12
                fillMode: Image.PreserveAspectFit
                anchors.bottom: parent.bottom
                anchors.centerIn: parent
            }
            MouseArea{
                id: playArea
                enabled: true
                anchors.fill: parent
                hoverEnabled: parent
                onClicked: {
                    mainScreen.visible = false
                    playScreen.visible = true
                    backButton.visible = true
                    storage.timeOutFlag = false
                }
            }
        }
        Rectangle{
            id: leaderButton
            implicitHeight: title.width/2
            implicitWidth: title.width/2
            border.width: mm(2.5)
            border.color: leaderArea.containsMouse ? "#FFC400" : "#FFAB00"
            color: leaderArea.containsMouse ? "#FFD740" : "#FFC400"
            radius: width
            Image{
                id:leaderIcon
                source:"qrc:/assets/leader_gold.png"
                sourceSize.width: allFather.width * 0.12
                sourceSize.height: allFather.height * 0.12
                fillMode: Image.PreserveAspectFit
                anchors.bottom: parent.bottom
                anchors.centerIn: parent
            }
            MouseArea{
                id: leaderArea
                enabled: true
                anchors.fill: parent
                hoverEnabled: parent
                onClicked: {
                    mainScreen.visible = false
                    leaderScreen.visible = true
                    backButton.visible = true
                }
            }
        }
        Rectangle{
            id: helpButton
            implicitHeight: title.width/2
            implicitWidth: title.width/2
            border.width: mm(2.5)
            border.color: helpArea.containsMouse ? "#FFC400" : "#FFAB00"
            color: helpArea.containsMouse ? "#FFD740" : "#FFC400"
            radius: width
            Image{
                id:helpIcon
                source:"qrc:/assets/help_gold.png"
                sourceSize.width: allFather.width * 0.12
                sourceSize.height: allFather.height * 0.12
                fillMode: Image.PreserveAspectFit
                anchors.bottom: parent.bottom
                anchors.centerIn: parent
            }
            MouseArea{
                id: helpArea
                enabled: true
                anchors.fill: parent
                hoverEnabled: parent
                onClicked: {
                    mainScreen.visible = false
                    backButton.visible = true
                    helpScreen.visible = true
                }
            }
        }
        Rectangle{
            id: exitButton
            implicitHeight: title.width/2
            implicitWidth: title.width/2
            border.width: mm(2.5)
            border.color: exitArea.containsMouse ? "#FFC400" : "#FFAB00"
            color: exitArea.containsMouse ? "#FFD740" : "#FFC400"
            radius: width
            Image{
                id:exitIcon
                source:"qrc:/assets/close_gold.png"
                sourceSize.width: allFather.width * 0.12
                sourceSize.height: allFather.height * 0.12
                fillMode: Image.PreserveAspectFit
                anchors.bottom: parent.bottom
                anchors.centerIn: parent
            }
            MouseArea{
                id: exitArea
                enabled: true
                anchors.fill: parent
                hoverEnabled: parent
                onClicked: Qt.quit()
            }
        }
    }
}
