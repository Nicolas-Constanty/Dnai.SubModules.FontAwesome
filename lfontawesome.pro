TEMPLATE = lib
CONFIG += plugin
QT += qml
QT += quick
CONFIG += c++11

TARGET  = dnaifontawesomeplugin

RESOURCES += qml.qrc

pluginfiles.files += \
    LabelAwesome.qml \
    LabelAwesomeBrand.qml \
    LabelAwesomeSolid.qml \
    TextAwesome.qml \
    TextAwesomeBrand.qml \
    ButtonAwesome.qml \
    ButtonAwesomeBrand.qml \
    ButtonAwesomeSolid.qml \
    TextAwesomeSolid.qml

isEmpty(PROJECT_ROOT_DIRECTORY){
  PROJECT_ROOT_DIRECTORY = $$[QT_INSTALL_QML]
}

# message($${PROJECT_ROOT_DIRECTORY})


target.path += $${PROJECT_ROOT_DIRECTORY}/Dnai/FontAwesome
pluginfiles.path += $${PROJECT_ROOT_DIRECTORY}/Dnai/FontAwesome

qmldirsrc.path =  $${PROJECT_ROOT_DIRECTORY}/Dnai/FontAwesome
qmldirsrc.files += \
    qmldir \
    plugins.qmltypes

INSTALLS += target pluginfiles qmldirsrc

CONFIG += install_ok

DISTFILES += \
    qmldir \
    LabelAwesome.qml \
    LabelAwesomeBrand.qml \
    LabelAwesomeSolid.qml \
    TextAwesome.qml \
    TextAwesomeBrand.qml \
    TextAwesomeSolid.qml \
    ButtonAwesome.qml \
    ButtonAwesomeBrand.qml \
    ButtonAwesomeSolid.qml \
    plugins.qmltypes

HEADERS += \
    dnaifontawesome_plugin.h

SOURCES += \
    dnaifontawesome_plugin.cpp
