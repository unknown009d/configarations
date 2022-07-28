#!/bin/bash

#notify-send -u low " Please Wait for the initialization..." "<span font='10px'>   The programs are auto-starting\n |- Brave\n |- Codium\n |- Nemo</span>"

sleep 10
notify-send -u low " ..Please wait for all the initial startup..  " \
                 "<span font='12px'>    The programs are auto-starting</span>\n
<span font='16px'>               </span>\n\
<span font='12px'>      Brave  Code   Nemo   Gimp\n</span>"

sleep 2
brave-browser-stable & disown; notify-send -u normal "[2]  Brave browser started..."
sleep 2
flatpak run com.vscodium.codium & disown; notify-send -u normal "[3]  VS Codium started..."
sleep 2
nemo & disown; notify-send -u normal "[4]  Nemo started..."
sleep 2
gimp & disown; notify-send -u normal "[5]  Gimp started..."
