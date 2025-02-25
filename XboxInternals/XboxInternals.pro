#-------------------------------------------------
#
# Project created by QtCreator 2013-01-30T20:09:47
#
#-------------------------------------------------

QT       -= gui

TARGET = XboxInternals
TEMPLATE = lib
DEFINES += XBOXINTERNALS_LIBRARY

unix:CONFIG += staticlib app_bundle

CONFIG += c++20

# flags (lets step it up a notch)
QMAKE_CXXFLAGS = -O3

# linking against botan (and adding to include path)
win32 {
    PLATFORM_BUILD_NAME = Win
    LIBS += C:/botan/lib/libbotan-3.a
    PRE_TARGETDEPS += C:/botan/lib/libbotan-3.a
    INCLUDEPATH += C:/botan/include/botan-3/
}
macx {
    PLATFORM_BUILD_NAME = OSX
    INCLUDEPATH += /opt/homebrew/include/botan-3
    LIBS += /opt/homebrew/lib/libbotan-3.a
}
else:unix {
    PLATFORM_BUILD_NAME = Unix
    INCLUDEPATH += /usr/include/botan-3
    LIBS += /usr/lib/libbotan-3.so.0
}

TARGET = XboxInternals
CONFIG(debug, debug|release) {
    DESTDIR = $$PWD/build/XboxInternals-$$PLATFORM_BUILD_NAME/debug/
} else:release {
    DESTDIR = $$PWD/build/XboxInternals-$$PLATFORM_BUILD_NAME/release/
}

SOURCES += \
    AvatarAsset/AssetHelpers.cpp \
    Gpd/XdbfHelpers.cpp \
    AvatarAsset/AvatarAsset.cpp \
    Gpd/AvatarAwardGpd.cpp \
    Account/Account.cpp \
    Disc/Gdfx.cpp \
    Disc/Svod.cpp \
    IO/BaseIO.cpp \
    IO/SvodIO.cpp \
    Stfs/StfsDefinitions.cpp \
    Stfs/StfsPackage.cpp \
    Stfs/XContentHeader.cpp \
    Account/AccountHelpers.cpp \
    Gpd/DashboardGpd.cpp \
    Gpd/GpdBase.cpp \
    Gpd/Xdbf.cpp \
    Gpd/GameGpd.cpp \
    IO/MemoryIO.cpp \
    IO/DeviceIO.cpp \
    Cryptography/XeKeys.cpp \
    Cryptography/XeCrypt.cpp \
    AvatarAsset/Ytgr.cpp \
    Fatx/FatxDrive.cpp \
    IO/FileIO.cpp \
    IO/FatxIO.cpp \
    Fatx/FatxDriveDetection.cpp \
    IO/SvodMultiFileIO.cpp \
    IO/MultiFileIO.cpp

HEADERS +=\
        XboxInternals_global.h \
    Account/AccountHelpers.h \
    AvatarAsset/AssetHelpers.h \
    AvatarAsset/AvatarAssetDefinintions.h \
    AvatarAsset/AvatarAsset.h \
    Gpd/AvatarAwardGpd.h \
    Gpd/DashboardGpd.h \
    Gpd/XdbfHelpers.h \
    Gpd/XdbfDefininitions.h \
    Account/Account.h \
    winnames.h \
    Gpd/GpdBase.h \
    Gpd/Xdbf.h \
    Disc/Gdfx.h \
    Disc/Svod.h \
    Gpd/GameGpd.h \
    IO/BaseIO.h \
    IO/SvodIO.h \
    Stfs/StfsConstants.h \
    Stfs/StfsDefinitions.h \
    Stfs/StfsPackage.h \
    Stfs/XContentHeader.h \
    Account/AccountDefinitions.h \
    IO/MemoryIO.h \
    IO/DeviceIO.h \
    Cryptography/XeKeys.h \
    Cryptography/XeCrypt.h \
    AvatarAsset/Ytgr.h \
    Fatx/FatxHelpers.h \
    Fatx/FatxDrive.h \
    Fatx/FatxConstants.h \
    IO/FileIO.h \
    IO/FatxIO.h \
    Fatx/FatxDriveDetection.h \
    IO/SvodMultiFileIO.h \
    IO/MultiFileIO.h \
    Fatx/FatxHelpers.h \
    Fatx/FatxDriveDetection.h \
    Fatx/FatxDrive.h \
    Fatx/FatxConstants.h
