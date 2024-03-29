QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

INCLUDEPATH += /usr/local/Cellar/opencv3/4.1.2/include/ \
            /usr/local/Cellar/opencv3/4.1.2/include/opencv4/ \
            ../../src/ \
            /usr/local/include/
DEPENDPATH += /usr/local/Cellar/opencv3/4.1.2/lib/pkgconfig/ \
            /usr/local/Cellar/opencv3/4.1.2/lib/ \
            -L/usr/local/Cellar/ \
            -L/usr/local/lib/
LIBS += -L/usr/local/Cellar/opencv3/4.1.2/lib \
        -lopencv_core \
        -lopencv_highgui \
        -lopencv_videoio \
        -lopencv_imgproc \
        -lopencv_imgcodecs \
        -lm

QT_CONFIG -= no-pkg-config
CONFIG  += link_pkgconfig
#PKGCONFIG += opencv

mac {
  PKG_CONFIG = /usr/local/bin/pkg-config
}

SOURCES += \
    ../../src/buffer.cpp \
    ../../src/circvidbuffer.cpp \
    ../../src/logger.cpp \
    ../../src/processMod.cpp \
    ../../src/slitScan.cpp \
    main.cpp \
    mainwindow.cpp \
    ../../src/synthesizer.cpp \
    ../../src/utilities.cpp

HEADERS += \
    ../../src/buffer.h \
    ../../src/circvidbuffer.h \
    ../../src/logger.h \
    ../../src/processMod.h \
    ../../src/slitScan.h \
    mainwindow.h \
    ../../src/synthesizer.h \
    ../../src/utilities.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
