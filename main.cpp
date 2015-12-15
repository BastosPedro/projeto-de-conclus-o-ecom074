#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlEngine>
#include "storage.hpp"

/*int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();


}*/

int main(){
    storage* whatever = new storage();
}
