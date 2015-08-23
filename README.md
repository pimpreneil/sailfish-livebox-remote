# Sailfish Livebox Remote

## About

Sailfish Livebox Remote is a simple network remote application to control the Orange Livebox using a Jolla Smartphone (or any SailfishOS phone).

## Roadmap

1. Add a setting screen to configure the IP of the TV box
2. Add the possibility to personalize the channel zapping screen (add/remove/move channels)

## The Livebox API

I did not manage to find any official documentation for the API. Here are the basic calls I have found on the internet and tested:

### Zap to a specific channel

    http://192.168.1.10:8080/remoteControl/cmd?operation=09&epg_id=**********&uui=1

The epg_id of each channel can be found by going to the following URL. It has to be padded with "\*" to reach a 10 characters string (e.g. TMC would be *******195):

    http://lsm-rendezvous040413.orange.fr/API/?api_token=be906750a3cd20d6ddb47ec0b50e7a68&output=json&withChannels=1
    
### Simulate a button press

    http://192.168.1.10:8080/remoteControl/cmd?operation=01&key=116&mode=0
    
The possible keys are the followings:

    116 : ON/OFF
    512 : 0
    513 : 1
    514 : 2
    515 : 3
    516 : 4
    517 : 5
    518 : 6
    519 : 7
    520 : 8
    521 : 9
    402 : CH+
    403 : CH-
    115 : VOL+
    114 : VOL-
    113 : MUTE
    103 : UP
    108 : DOWN
    105 : LEFT
    106 : RIGHT
    352 : OK
    158 : BACK
    139 : MENU
    164 : PLAY/PAUSE
    168 : FBWD

The possible modes:

    0: Simple button press
    1: Long button press (press action)
    2: Long button press (release action)

### Get box infos

    http://192.168.1.10:8080/remoteControl/cmd?operation=10
    
### Listen to events

    http://192.168.1.10:8080/remoteControl/notifyEvent
