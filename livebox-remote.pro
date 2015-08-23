# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = livebox-remote

CONFIG += sailfishapp

SOURCES += \
    src/livebox-remote.cpp

OTHER_FILES += \
    qml/cover/CoverPage.qml \
    livebox-remote.desktop \
    rpm/livebox-remote.changes.in \
    rpm/livebox-remote.spec \
    rpm/livebox-remote.yaml \
    qml/pages/ChannelsPage.qml \
    qml/pages/RemoteControlPage.qml \
    qml/livebox-remote.qml
