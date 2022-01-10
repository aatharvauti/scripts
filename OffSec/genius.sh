#!/bin/bash

# *GENERAL
# 2>/dev/null silences errors
# $FNAME is made to name the directory for the given instance

# // TODO `mkdir` `date_time` & use directory to save the output

# @param FNAME outputs date in mdy_HM format
FNAME=$(date +%m%d%y_%H%M)

mkdir $HOME/genius 2>/dev/null  # If it already exists, nothing will happen
mkdir $HOME/genius/$FNAME # Create a folder for storing the output
# Running this script at 06:09 on 04/20/2022 #* will make a folder named 04202022_0609

echo Output Folder Location: $HOME/genius/$FNAME  # Be nice and tell the user
cd $HOME/genius/$FNAME

# ! TODO Make Use Of Argument Parser
# TODO Argument Parser Help Menu

# * Nmap, Wfuzzer, ZAPROXY, Nikto, nslookup, curl

HELP () {

echo -e "
genius v0.1 (https://github.com/aatharvauti/scripts)

{} required
[] optional
<> specification

Usage: genius [Space-Separated Options] {Target Specification}

-G  Genius Mode
    Automatically gets the shit done!

-w  If the target has a web server running

    -e  Add the IP to /etc/resolv.conf (requires an argument with valid URL)
    -l  Run Nslookup
    -r  Reverse IP Lookup
    -n  Run Nikto scan
    -f  Run WFuzzer

-m  If the target is using Microsoft Windows


TARGET SPECIFICATION:
    Can pass IP addresses, hostnames, networks, etc.
    Ex: example.com, example.com/24, 192.168.0.1; 10.0.0-255.1-254
    -iL <inputfilename>: Input from list of hosts/networks
    -iR <num hosts>: Choose random targets
    --exclude <host1[,host2][,host3],...>: Exclude hosts/networks
    --excludefile <exclude_file>: Exclude list from file

"

}

HELP
# TODO IF Ports `80, 443, 8000, 8080` THEN  use ZAPROXY & Nikto Scan, Wfuzzer, curl robots.txt
# TODO ADD to `/etc/hosts`
# TODO ADD Nmap script engine
# TODO `nslookup`
# TODO ADD Hydra Bruteforce `SSH, FTP, Telnet`
# TODO ADD Auto SSH Login and `GET cat <crucial files>`

