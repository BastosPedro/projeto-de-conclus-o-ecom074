import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
//import "MyButton.qml"


Window {
    function mm(value){
        return value * Screen.pixelDensity
    }
    id: allFather
    visible: true
    minimumHeight: mm(150)
    minimumWidth: mm(150)
    height: mm(150)
    width: mm(150)
    color: "#0D47A1"
    RowLayout{
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

                ColumnLayout{
                    anchors.centerIn:parent
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
                            implicitHeight: mm(30)
                            implicitWidth: mm(30)
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
                           }
                        }
                        Rectangle{
                            id: leaderButton
                            implicitHeight: mm(30)
                            implicitWidth: mm(30)
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
                           }
                        }
                        Rectangle{
                            id: helpButton
                            implicitHeight: mm(30)
                            implicitWidth: mm(30)
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
                           }
                        }
                        Rectangle{
                            id: exitButton
                            implicitHeight: mm(30)
                            implicitWidth: mm(30)
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
            }
        }
    }
}

