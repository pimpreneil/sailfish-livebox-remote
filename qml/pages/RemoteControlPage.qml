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

        Column {
            id: column
            width: parent.width
            spacing: Theme.paddingLarge

            PageHeader {
                title: "Channels"
            }
            Item {
                anchors.right: parent.right
                anchors.rightMargin: Theme.paddingLarge
                anchors.left: parent.left
                anchors.leftMargin: Theme.paddingLarge
                height: 50

                Button {
                    width: parent.width / 3
                    color: Theme.secondaryHighlightColor
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left

                    text: "MENU"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=01&key=139&mode=0");
                        xhr.send();
                    }
                }
                Button {
                    anchors.centerIn: parent
                    width: parent.width / 3
                    color: Theme.secondaryHighlightColor

                    text: "UP"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=01&key=103&mode=0");
                        xhr.send();
                    }
                }
                Button {
                    anchors.right: parent.right
                    width: parent.width / 3
                    color: Theme.secondaryHighlightColor
                    anchors.verticalCenter: parent.verticalCenter

                    text: "ON/OFF"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=01&key=116&mode=0");
                        xhr.send();
                    }
                }
            }
            Item {
                anchors.right: parent.right
                anchors.rightMargin: Theme.paddingLarge
                anchors.left: parent.left
                anchors.leftMargin: Theme.paddingLarge
                height: 50

                Button {
                    width: parent.width / 3
                    color: Theme.secondaryHighlightColor
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left

                    text: "LEFT"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=01&key=105&mode=0");
                        xhr.send();
                    }
                }
                Button {
                    anchors.centerIn: parent
                    width: parent.width / 3
                    color: Theme.secondaryHighlightColor

                    text: "OK"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=01&key=352&mode=0");
                        xhr.send();
                    }
                }
                Button {
                    anchors.right: parent.right
                    width: parent.width / 3
                    color: Theme.secondaryHighlightColor
                    anchors.verticalCenter: parent.verticalCenter

                    text: "RIGHT"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=01&key=106&mode=0");
                        xhr.send();
                    }
                }
            }
            Item {
                anchors.right: parent.right
                anchors.rightMargin: Theme.paddingLarge
                anchors.left: parent.left
                anchors.leftMargin: Theme.paddingLarge
                height: 50

                Button {
                    anchors.centerIn: parent
                    width: parent.width / 3
                    color: Theme.secondaryHighlightColor

                    text: "DOWN"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=01&key=108&mode=0");
                        xhr.send();
                    }
                }
            }
            Item {
                anchors.right: parent.right
                anchors.rightMargin: Theme.paddingLarge
                anchors.left: parent.left
                anchors.leftMargin: Theme.paddingLarge
                height: 50

                Button {
                    anchors.centerIn: parent
                    width: parent.width / 3
                    color: Theme.secondaryHighlightColor

                    text: "BACK"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=01&key=158&mode=0");
                        xhr.send();
                    }
                }
            }
            Item {
                anchors.right: parent.right
                anchors.rightMargin: Theme.paddingLarge
                anchors.left: parent.left
                anchors.leftMargin: Theme.paddingLarge
                height: 50

                Button {
                    width: parent.width / 3
                    color: Theme.secondaryHighlightColor
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left

                    text: "VOL+"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=01&key=115&mode=0");
                        xhr.send();
                    }
                }
                Button {
                    anchors.right: parent.right
                    width: parent.width / 3
                    color: Theme.secondaryHighlightColor
                    anchors.verticalCenter: parent.verticalCenter

                    text: "CH+"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=01&key=402&mode=0");
                        xhr.send();
                    }
                }
            }
            Item {
                anchors.right: parent.right
                anchors.rightMargin: Theme.paddingLarge
                anchors.left: parent.left
                anchors.leftMargin: Theme.paddingLarge
                height: 50

                Button {
                    width: parent.width / 3
                    color: Theme.secondaryHighlightColor
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left

                    text: "VOL-"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=01&key=114&mode=0");
                        xhr.send();
                    }
                }
                Button {
                    anchors.right: parent.right
                    width: parent.width / 3
                    color: Theme.secondaryHighlightColor
                    anchors.verticalCenter: parent.verticalCenter

                    text: "CH-"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=01&key=403&mode=0");
                        xhr.send();
                    }
                }
            }
            Item {
                anchors.right: parent.right
                anchors.rightMargin: Theme.paddingLarge
                anchors.left: parent.left
                anchors.leftMargin: Theme.paddingLarge
                height: 50

                Button {
                    width: parent.width / 3
                    color: Theme.secondaryHighlightColor
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left

                    text: "1"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=01&key=513&mode=0");
                        xhr.send();
                    }
                }
                Button {
                    anchors.centerIn: parent
                    width: parent.width / 3
                    color: Theme.secondaryHighlightColor

                    text: "2"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=01&key=514&mode=0");
                        xhr.send();
                    }
                }
                Button {
                    anchors.right: parent.right
                    width: parent.width / 3
                    color: Theme.secondaryHighlightColor
                    anchors.verticalCenter: parent.verticalCenter

                    text: "3"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=01&key=515&mode=0");
                        xhr.send();
                    }
                }
            }
            Item {
                anchors.right: parent.right
                anchors.rightMargin: Theme.paddingLarge
                anchors.left: parent.left
                anchors.leftMargin: Theme.paddingLarge
                height: 50

                Button {
                    width: parent.width / 3
                    color: Theme.secondaryHighlightColor
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left

                    text: "4"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=01&key=516&mode=0");
                        xhr.send();
                    }
                }
                Button {
                    anchors.centerIn: parent
                    width: parent.width / 3
                    color: Theme.secondaryHighlightColor

                    text: "5"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=01&key=517&mode=0");
                        xhr.send();
                    }
                }
                Button {
                    anchors.right: parent.right
                    width: parent.width / 3
                    color: Theme.secondaryHighlightColor
                    anchors.verticalCenter: parent.verticalCenter

                    text: "6"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=01&key=518&mode=0");
                        xhr.send();
                    }
                }
            }
            Item {
                anchors.right: parent.right
                anchors.rightMargin: Theme.paddingLarge
                anchors.left: parent.left
                anchors.leftMargin: Theme.paddingLarge
                height: 50

                Button {
                    width: parent.width / 3
                    color: Theme.secondaryHighlightColor
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left

                    text: "7"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=01&key=519&mode=0");
                        xhr.send();
                    }
                }
                Button {
                    anchors.centerIn: parent
                    width: parent.width / 3
                    color: Theme.secondaryHighlightColor

                    text: "8"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=01&key=520&mode=0");
                        xhr.send();
                    }
                }
                Button {
                    anchors.right: parent.right
                    width: parent.width / 3
                    color: Theme.secondaryHighlightColor
                    anchors.verticalCenter: parent.verticalCenter

                    text: "9"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=01&key=521&mode=0");
                        xhr.send();
                    }
                }
            }
            Item {
                anchors.right: parent.right
                anchors.rightMargin: Theme.paddingLarge
                anchors.left: parent.left
                anchors.leftMargin: Theme.paddingLarge
                height: 50

                Button {
                    anchors.centerIn: parent
                    width: parent.width / 3
                    color: Theme.secondaryHighlightColor

                    text: "0"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=01&key=512&mode=0");
                        xhr.send();
                    }
                }
            }
            Item {
                anchors.right: parent.right
                anchors.rightMargin: Theme.paddingLarge
                anchors.left: parent.left
                anchors.leftMargin: Theme.paddingLarge
                height: 50

                Button {
                    width: parent.width / 3
                    color: Theme.secondaryHighlightColor
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left

                    text: "FBWD"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=01&key=168&mode=0");
                        xhr.send();
                    }
                }
                Button {
                    anchors.centerIn: parent
                    width: parent.width / 3
                    color: Theme.secondaryHighlightColor

                    text: "PAUSE"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=01&key=164&mode=0");
                        xhr.send();
                    }
                }
                Button {
                    anchors.right: parent.right
                    width: parent.width / 3
                    color: Theme.secondaryHighlightColor
                    anchors.verticalCenter: parent.verticalCenter

                    text: "FFWD"
                    onClicked: {
                        var xhr = new XMLHttpRequest();
                        xhr.open("GET", "http://192.168.1.10:8080/remoteControl/cmd?operation=01&key=159&mode=0");
                        xhr.send();
                    }
                }
            }
        }
    }
}
