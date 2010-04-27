# -------------------------------------------------
# Project created by QtCreator 2010-02-26T22:34:51
# -------------------------------------------------
QT -= gui \
    core
TARGET = openEMS
CONFIG += console
CONFIG -= app_bundle qt
TEMPLATE = app
OBJECTS_DIR = obj
INCLUDEPATH += ../CSXCAD \
    ../fparser \
    ../tinyxml
LIBS += -L../CSXCAD \
    -lCSXCAD \
    -L../fparser \
    -lfparser \
    -L../tinyxml \
    -ltinyxml \
    -lboost_thread \
    -lhdf5 \
    -lhdf5_cpp
QMAKE_LFLAGS += \'-Wl,-rpath,\$$ORIGIN/../CSXCAD\'
QMAKE_LFLAGS += \'-Wl,-rpath,\$$ORIGIN/../fparser\'
QMAKE_LFLAGS += \'-Wl,-rpath,\$$ORIGIN/../tinyxml\'
SOURCES += main.cpp \
    tools/ErrorMsg.cpp \
    tools/AdrOp.cpp \
    FDTD/engine.cpp \
    FDTD/operator.cpp \
    tools/array_ops.cpp \
    FDTD/processvoltage.cpp \
    FDTD/processing.cpp \
    FDTD/processfields.cpp \
    FDTD/processfields_td.cpp \
    FDTD/processcurrent.cpp \
    examples/FDTD_examples.cpp \
    openems.cpp \
    FDTD/engine_multithread.cpp \
    FDTD/operator_cylinder.cpp \
    FDTD/engine_cylinder.cpp \
    FDTD/operator_extension.cpp \
    FDTD/engine_extension.cpp \
    FDTD/engine_ext_mur_abc.cpp \
    FDTD/operator_ext_mur_abc.cpp
HEADERS += tools/ErrorMsg.h \
    tools/AdrOp.h \
    tools/constants.h \
    FDTD/engine.h \
    FDTD/operator.h \
    tools/array_ops.h \
    FDTD/processvoltage.h \
    FDTD/processing.h \
    FDTD/processfields.h \
    FDTD/processfields_td.h \
    FDTD/processcurrent.h \
    examples/FDTD_examples.h \
    openems.h \
    FDTD/engine_multithread.h \
    FDTD/operator_cylinder.h \
    FDTD/engine_cylinder.h \
    FDTD/operator_extension.h \
    FDTD/engine_extension.h \
    FDTD/engine_ext_mur_abc.h \
    FDTD/operator_ext_mur_abc.h
QMAKE_CXXFLAGS_RELEASE = -O2 \
    -g \
    -march=native
QMAKE_CXXFLAGS_DEBUG = -O0 \
    -g \
    -march=native
