TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += teste_Ponto.cpp

HEADERS += \
    Ponto.h


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../Point_StaticLib/PontoStaticLib/build-PontoStaticLib-Desktop-Debug/release/ -lPontoStaticLib
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../Point_StaticLib/PontoStaticLib/build-PontoStaticLib-Desktop-Debug/debug/ -lPontoStaticLib
else:unix: LIBS += -L$$PWD/../../Point_StaticLib/PontoStaticLib/build-PontoStaticLib-Desktop-Debug/ -lPontoStaticLib

INCLUDEPATH += $$PWD/../../Point_StaticLib/PontoStaticLib/build-PontoStaticLib-Desktop-Debug
DEPENDPATH += $$PWD/../../Point_StaticLib/PontoStaticLib/build-PontoStaticLib-Desktop-Debug

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../Point_StaticLib/PontoStaticLib/build-PontoStaticLib-Desktop-Debug/release/libPontoStaticLib.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../Point_StaticLib/PontoStaticLib/build-PontoStaticLib-Desktop-Debug/debug/libPontoStaticLib.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../Point_StaticLib/PontoStaticLib/build-PontoStaticLib-Desktop-Debug/release/PontoStaticLib.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../Point_StaticLib/PontoStaticLib/build-PontoStaticLib-Desktop-Debug/debug/PontoStaticLib.lib
else:unix: PRE_TARGETDEPS += $$PWD/../../Point_StaticLib/PontoStaticLib/build-PontoStaticLib-Desktop-Debug/libPontoStaticLib.a
