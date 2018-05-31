#!/bin/bash

PACKAGES=("${PACKAGES[@]}"
    # IDEs / Code editors
    "code" "kdevelop"
    # CMake
    "cmake" "extra-cmake-modules"
    # SCMs
    "git"
    # Go
    "go" "go-tools"
    # Web-dev on CLI
    "httpie" "js-beautify"
    # Image handling
    "pngcrush" "cutycapt-qt5-git"
    # Qt5 packages
    "qt5-base" "qt5-systems" "qt5-feedback" "qt5-xmlpatterns" "qt5-x11extras"
    "qt5-webview" "qt5-webchannel" "qt5-websockets" "qt5-webkit" "qt5-webengine"
    "qt5-tools" "qt5-svg" "qt5-speech" "qt5-serialport" "qt5-serialbus"
    "qt5-sensors" "qt5-script" "qt5-remoteobjects" "qt5-quickcontrols2"
    "qt5-networkauth" "qt5-multimedia" "qt5-location" "qt5-imageformats"
    "qt5-graphicaleffects" "qt5-gamepad" "qt5-doc" "qt5-declarative"
    "qt5-datavis3d" "qt5-connectivity" "qt5-charts" "qt5-canvas3d" "qt5-3d"
    "qt5-scxml"
    # CLOC (source-line counter)
    "tokei"
)

# To be added:
#
#   "gostatus"
