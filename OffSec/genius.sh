#!/bin/bash

# // TODO `mkdir` `data_time` & use directory to save the output

# @param FNAME outputs date in mdy_HM format
FNAME=$(date +%m%d%y_%H%M)

mkdir $HOME/genius 2>/dev/null  # If it already exists, nothing will happen
mkdir $HOME/genius/$FNAME # Create a folder for storing the output
# Running this script at 06:09 on 04/20/2022 #* will make a folder named 04202022_0609

echo Output Folder Location: $HOME/genius/$FNAME  # Be nice and tell the user
cd $HOME/genius/$FNAME

# TODO Make Use Of Argument Parser
# TODO IF Ports `80, 443, 8000, 8080` THEN  use ZAPROXY & Nikto Scan, Wfuzzer, curl robots.txt
# TODO ADD to `/etc/hosts`
# TODO ADD Nmap script engine
# TODO `nslookup`
# TODO ADD Hydra Bruteforce `SSH, FTP, Telnet`
# TODO ADD Auto SSH Login and `GET cat <crucial files>`

