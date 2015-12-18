import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import MyStorage 1.0

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
//Timer, number generator
    Timer{
       id:time
       interval: 1000
       repeat: true
       running: storage.timeOutFlag? false : true
       onTriggered: timeAux.timeChanged()
    }
    Item{
        id:timeAux
        property int timeLeft: storage.timeOutFlag? 0 : 31
        function restart() {
            timeAux.timeLeft = 31
        }
        function timeChanged(){
            timeLeft--
            if(!timeAux.timeLeft){
                storage.timeOutFlag = true
                if(storage.score > storage.highScore)
                    storage.newRecordFlag = true
            }
        }
    }
    PropStorage{
        id: storage
        numX: setNumX(parseInt(0))
        numY: setNumY(parseInt(0))
        property bool errorFlag:false
        property bool newRecordFlag: false
        property bool timeOutFlag: true
    }
    BackScreen {
        id: backScreen
        //backscreen holds everything, the background, the menus
    }
}

