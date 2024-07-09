QT       += core gui
QT       += charts
QT       += serialport

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    homepage.cpp \
    humidity.cpp \
    main.cpp \
    mainwindow.cpp \
    range.cpp \
    setting.cpp \
    temperature.cpp \
    threshold.cpp

HEADERS += \
    homepage.h \
    humidity.h \
    mainwindow.h \
    range.h \
    setting.h \
    temperature.h \
    threshold.h

FORMS += \
    homepage.ui \
    humidity.ui \
    mainwindow.ui \
    range.ui \
    setting.ui \
    temperature.ui \
    threshold.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    image.qrc
