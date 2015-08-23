/*
  Copyright (C) 2013 Jolla Ltd.
  Contact: Thomas Perl <thomas.perl@jollamobile.com>
  All rights reserved.

  You may use this file under the terms of BSD license as follows:

  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the Jolla Ltd nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDERS OR CONTRIBUTORS BE LIABLE FOR
  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
  ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    id: page

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height
        contentWidth: parent.width

        PullDownMenu {
            MenuItem {
                text: qsTr("Remote control")
                onClicked: pageStack.push(Qt.resolvedUrl("RemoteControlPage.qml"))
            }
        }


        Column {
            id: column
            width: parent.width
            spacing: Theme.paddingLarge

            PageHeader {
                title: "Channels"
            }
            Row {
                anchors.right: parent.right
                anchors.rightMargin: Theme.paddingLarge
                anchors.left: parent.left
                anchors.leftMargin: Theme.paddingLarge

                Button {
                    width: parent.width / 3
                    x: Theme.paddingLarge
                    color: Theme.secondaryHighlightColor

                    text: "TF1"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=09&epg_id=*******192&uui=1");
                        xhr.send();
                    }
                }
                Button {
                    width: parent.width / 3
                    x: Theme.paddingLarge
                    color: Theme.secondaryHighlightColor

                    text: "France 2"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=09&epg_id=*********4&uui=1");
                        xhr.send();
                    }
                }
                Button {
                    width: parent.width / 3
                    x: Theme.paddingLarge
                    color: Theme.secondaryHighlightColor

                    text: "France 3"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=09&epg_id=********80&uui=1");
                        xhr.send();
                    }
                }
            }
            Row {
                anchors.right: parent.right
                anchors.rightMargin: Theme.paddingLarge
                anchors.left: parent.left
                anchors.leftMargin: Theme.paddingLarge

                Button {
                    width: parent.width / 3
                    x: Theme.paddingLarge
                    color: Theme.secondaryHighlightColor

                    text: "France 5"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=09&epg_id=********47&uui=1");
                        xhr.send();
                    }
                }
                Button {
                    width: parent.width / 3
                    x: Theme.paddingLarge
                    color: Theme.secondaryHighlightColor

                    text: "M6"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=09&epg_id=*******118&uui=1");
                        xhr.send();
                    }
                }
                Button {
                    width: parent.width / 3
                    x: Theme.paddingLarge
                    color: Theme.secondaryHighlightColor

                    text: "Arte"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=09&epg_id=*******111&uui=1");
                        xhr.send();
                    }
                }
            }
            Row {
                anchors.right: parent.right
                anchors.rightMargin: Theme.paddingLarge
                anchors.left: parent.left
                anchors.leftMargin: Theme.paddingLarge

                Button {
                    width: parent.width / 3
                    x: Theme.paddingLarge
                    color: Theme.secondaryHighlightColor

                    text: "D8"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=09&epg_id=*******445&uui=1");
                        xhr.send();
                    }
                }
                Button {
                    width: parent.width / 3
                    x: Theme.paddingLarge
                    color: Theme.secondaryHighlightColor

                    text: "W9"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=09&epg_id=*******119&uui=1");
                        xhr.send();
                    }
                }
                Button {
                    width: parent.width / 3
                    x: Theme.paddingLarge
                    color: Theme.secondaryHighlightColor

                    text: "RMC"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=09&epg_id=******1400&uui=1");
                        xhr.send();
                    }
                }
            }
            Row {
                anchors.right: parent.right
                anchors.rightMargin: Theme.paddingLarge
                anchors.left: parent.left
                anchors.leftMargin: Theme.paddingLarge

                Button {
                    width: parent.width / 3
                    x: Theme.paddingLarge
                    color: Theme.secondaryHighlightColor

                    text: "TMC"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=09&epg_id=*******195&uui=1");
                        xhr.send();
                    }
                }
                Button {
                    width: parent.width / 3
                    x: Theme.paddingLarge
                    color: Theme.secondaryHighlightColor

                    text: "NT1"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=09&epg_id=*******446&uui=1");
                        xhr.send();
                    }
                }
                Button {
                    width: parent.width / 3
                    x: Theme.paddingLarge
                    color: Theme.secondaryHighlightColor

                    text: "NRJ 12"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=09&epg_id=*******444&uui=1");
                        xhr.send();
                    }
                }
            }
            Row {
                anchors.right: parent.right
                anchors.rightMargin: Theme.paddingLarge
                anchors.left: parent.left
                anchors.leftMargin: Theme.paddingLarge

                Button {
                    width: parent.width / 3
                    x: Theme.paddingLarge
                    color: Theme.secondaryHighlightColor

                    text: "LCP"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=09&epg_id=*******234&uui=1");
                        xhr.send();
                    }
                }
                Button {
                    width: parent.width / 3
                    x: Theme.paddingLarge
                    color: Theme.secondaryHighlightColor

                    text: "France 4"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=09&epg_id=********78&uui=1");
                        xhr.send();
                    }
                }
                Button {
                    width: parent.width / 3
                    x: Theme.paddingLarge
                    color: Theme.secondaryHighlightColor

                    text: "BFM TV"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=09&epg_id=*******481&uui=1");
                        xhr.send();
                    }
                }
            }
            Row {
                anchors.right: parent.right
                anchors.rightMargin: Theme.paddingLarge
                anchors.left: parent.left
                anchors.leftMargin: Theme.paddingLarge

                Button {
                    width: parent.width / 3
                    x: Theme.paddingLarge
                    color: Theme.secondaryHighlightColor

                    text: "D17"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=09&epg_id=*******458&uui=1");
                        xhr.send();
                    }
                }
                Button {
                    width: parent.width / 3
                    x: Theme.paddingLarge
                    color: Theme.secondaryHighlightColor

                    text: "HD1"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=09&epg_id=******1404&uui=1");
                        xhr.send();
                    }
                }
                Button {
                    width: parent.width / 3
                    x: Theme.paddingLarge
                    color: Theme.secondaryHighlightColor

                    text: "6ter"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=09&epg_id=******1403&uui=1");
                        xhr.send();
                    }
                }
            }
            Row {
                anchors.right: parent.right
                anchors.rightMargin: Theme.paddingLarge
                anchors.left: parent.left
                anchors.leftMargin: Theme.paddingLarge

                Button {
                    width: parent.width / 3
                    x: Theme.paddingLarge
                    color: Theme.secondaryHighlightColor

                    text: "Numéro 23"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=09&epg_id=******1402&uui=1");
                        xhr.send();
                    }
                }
                Button {
                    width: parent.width / 3
                    x: Theme.paddingLarge
                    color: Theme.secondaryHighlightColor

                    text: "Chérie 25"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=09&epg_id=******1399&uui=1");
                        xhr.send();
                    }
                }
                Button {
                    width: parent.width / 3
                    x: Theme.paddingLarge
                    color: Theme.secondaryHighlightColor

                    text: "i>Télé"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=09&epg_id=*******226&uui=1");
                        xhr.send();
                    }
                }
            }
            Row {
                anchors.right: parent.right
                anchors.rightMargin: Theme.paddingLarge
                anchors.left: parent.left
                anchors.leftMargin: Theme.paddingLarge

                Button {
                    width: parent.width / 3
                    x: Theme.paddingLarge
                    color: Theme.secondaryHighlightColor

                    text: "Canal+"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=09&epg_id=********34&uui=1");
                        xhr.send();
                    }
                }
                Button {
                    width: parent.width / 3
                    x: Theme.paddingLarge
                    color: Theme.secondaryHighlightColor

                    text: "France Ô"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=09&epg_id=*******160&uui=1");
                        xhr.send();
                    }
                }
                Button {
                    width: parent.width / 3
                    x: Theme.paddingLarge
                    color: Theme.secondaryHighlightColor

                    text: "L'Équipe 21"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=09&epg_id=******1401&uui=1");
                        xhr.send();
                    }
                }
             }
        }
    }
}


