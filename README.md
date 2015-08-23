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

Here are the epg_id of most of the channels. For the rest, the box infos call below can give you the currently playing channel's epg_id. The ids have to be padded with "\*" to reach a 10 characters string (e.g. TF1 becomes *******192):

    TF1 : 192
    France 2 : 4
    France 3 : 80
    Canal+ : 34
    France 5 : 47
    M6 : 118
    Arte : 111
    D8 : 445
    W9 : 119
    TMC : 195
    NT1 : 446
    NRJ 12 : 444
    LCP/PS : 234
    France 4 : 78
    BFM TV : 481
    i>Télé : 226
    D17 : 458
    Gulli : 482
    France Ô : 160
    HD1 : 1404
    L'Equipe 21 : 1401
    6ter : 1403
    Numéro 23 : 1402
    RMC Découverte : 1400
    Chérie 25 : 1399
    Téva : 191
    TV5 Monde : 205
    Paris Première : 145
    RTL9 : 115
    AB1 : 5
    Tv Breizh : 225
    Canal+ Cinéma : 33
    Canal+ Sport : 35
    Canal+ Family : 657
    Canal+ Décalé : 30
    OCS max : 730
    OCS City "génération HBO" : 128 
    OCS choc : 732
    OCS géants : 734
    TCM : 185
    Disney Channel : 58
    Boomerang : 321
    Boing : 924
    Equidia Live : 64
    Equidia Life : 1146
    AB Moteurs : 15
    beIN SPORT 1 : 1290
    beIN SPORT 2 : 1304
    Eurosport : 76
    Eurosport 2 : 439
    sport365 : 1355
    Nautical Channel : 415
    LCI : 112
    France 24 : 529
    Ushuaia TV : 451
    Histoire : 88
    Animaux : 12
    Escales : 67
    Chasse et pêche : 38
    Toute l'histoire : 7
    Encyclo : 63
    NoLife : 1000000
    Game One : 87
    Mangas : 6
    KZTV : 929
    TRACE Urban : 325
    NRJ Hits : 605
    M6 Music Hits : 453
    MCM Top : 343
    MCM Pop : 241
    Trace Tropical : 753
    CNN : 53
    BBC World : 19
    Al Jazeera English : 180
    
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
