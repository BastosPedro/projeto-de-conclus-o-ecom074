TEMPLATE = app

QT += qml quick
CONFIG += c++11

SOURCES += main.cpp \
    storage.cpp

RESOURCES += qml.qrc

OTHER_FILES += /HelpPage.qml

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

DISTFILES +=

HEADERS += \
    storage.hpp

