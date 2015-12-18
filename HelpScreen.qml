import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import MyStorage 1.0

ColumnLayout{
    id: helpScreen
    visible: false
    anchors.centerIn: parent
    Text{
        text:qsTr("Bem vindo ao Math Master!")
        font.pixelSize: 20
        font.bold: true
        color:"#FFAB00"
    }
    Text{
        text:qsTr("O jogo é bem simples, segue as seguintes regras:")
        font.pixelSize: 15
        font.bold: true
        color:"#FFAB00"
    }
    Text{
        text:qsTr(" - Você inicia o jogo apertando o botão Play")
        font.pixelSize: 12
        font.bold: true
        color:"#FFAB00"
    }
    Text{
        text:qsTr(" - Logo você recebe dois números, e tem que responder a soma deles")
        font.pixelSize: 12
        font.bold: true
        color:"#FFAB00"
    }
    Text{
        text:qsTr(" - Para mandar a resposta, basta escrevê-la no espaço indicado e apertar ENTER")
        font.pixelSize: 12
        font.bold: true
        color:"#FFAB00"
    }
    Text{
        text:qsTr(" - Se acertar, você ganha um ponto, e recebe outros dois números para somar")
        font.pixelSize: 12
        font.bold: true
        color:"#FFAB00"
    }
    Text{
        text:qsTr(" - A medida que você for acertando os números vão aumentando")
        font.pixelSize: 12
        font.bold: true
        color:"#FFAB00"
    }
    Text{
        text:qsTr(" - O jogo para quando você erra, ou quando seu tempo de 30 segundos acaba")
        font.pixelSize: 12
        font.bold: true
        color:"#FFAB00"
    }
    Text{
        text:qsTr(" - Se você quer ver a melhor potuação, clique no botão com o troféu, no menu")
        font.pixelSize: 12
        font.bold: true
        color:"#FFAB00"
    }
    Text{
        text:qsTr(" - O botão da seta no canto superior direito da tela te retornará para o menu")
        font.pixelSize: 12
        font.bold: true
        color:"#FFAB00"
    }
    Text{
        text:qsTr(" - Bem simples, não?")
        font.pixelSize: 12
        font.bold: true
        color:"#FFAB00"
    }
}
