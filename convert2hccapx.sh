#!/bin/bash
# the location of cap2hccapx tool that converts pcap to hccapx
# This is the path to this file from my ~/ (home) directory
PATH_TO_CAP2HCCAPX='~/hashcat-utils/src/cap2hccapx.bin'

# Start a loop through every pcap file in this directory
for pcap_file in *.pcap; do
    # Strip the file extention off of the pcap file "pcap" and use that file
    # name to create a file in the hccapx folder with the extention of hccapx
    # again - this is the path to where the converted files will go - this path and directory exists
    hccapx_file="~/Documents/Pwnagotchi_Files/hccapx/${pcap_file%.*}.hccapx"
    # convert the pcap to hccapx
    # this is the command being ran in this script which is erroring out
    # if I run the following command it seems to work though...
    # ~/hashcat-utils/bin/cap2hccapx.bin VerizonMiFi7730L0D52_2880a2050d53.pcap ../hccapx/VerizonMiFi.hccapx
    # which I THINK is what it's trying to do below...
    $(PATH_TO_CAP2HCCAPX $pcap_file $hccapx_file)
done
