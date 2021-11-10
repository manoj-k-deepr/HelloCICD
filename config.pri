#############################################################################
# configuration file for build process
#############################################################################

REQ_QT_VERSION = "5.11.3"

# check qt version and abort if not sufficient
!contains(QT_VERSION, $${REQ_QT_VERSION}) {
        error("Wrong Qt Version $${QT_VERSION}, required is $${REQ_QT_VERSION}")
}

##############################################################################
# includes
##############################################################################

INCLUDEPATH += $$PWD

CONFIG += conan_basic_setup
include(conanbuildinfo.pri)

#message(The project will be installed in $$DESTDIR)

##############################################################################
# configuration
##############################################################################

#CONFIG -= warn_off
#CONFIG += warn_on thread

QT = core gui

QTPLUGIN     += qjpeg \
                qgif

DEFINES += QT_DEPRECATED_WARNINGS
DEFINES += _WIN32_WINDOWS WIN32_LEAN_AND_MEAN

##############################################################################
# tidy up debug and release configuration
##############################################################################

# Therefore we clean up the occurences of "release" and "debug" in the CONFIG variable
# in a way so they appear only once in CONFIG.

CONFIG += force_debug_info debug_info
CONFIG+=separate_debug_info

CONFIG(debug, debug|release) {
    DEBUG_OR_RELEASE = Debug
    CONFIG -= debug release
    CONFIG += debug
    #DEFINES += APP_LOGGING
    DEFINES += CRITICAL_LOGGING
} else {
    DEBUG_OR_RELEASE = Release
    CONFIG -= debug release
    CONFIG += release
    QMAKE_CXXFLAGS += /Zi
    QMAKE_LFLAGS_RELEASE += /DEBUG
    #DEFINES += APP_LOGGING
    DEFINES += CRITICAL_LOGGING
}

MOC_DIR     += build/gen/$${DEBUG_OR_RELEASE}/moc
OBJECTS_DIR += build/gen/$${DEBUG_OR_RELEASE}/obj
UI_DIR      += build/gen/$${DEBUG_OR_RELEASE}/ui
RCC_DIR     += build/gen/$${DEBUG_OR_RELEASE}/rcc

DESTDIR = ../bin/$${DEBUG_OR_RELEASE}

QMAKE_CXXFLAGS += /std:c++17
