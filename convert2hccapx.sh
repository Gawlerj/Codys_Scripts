#!/bin/bash
# the location of cap2hccapx tool that converts pcap to hccapx
PATH_TO_CAP2HCCAPX='~/hashcat-utils/src/cap2hccapx.bin'

# Start a loop through every pcap file in this directory
for pcap_file in *.pcap; do
    # Strip the file extention off of the pcap file "pcap" and use that file
    # name to create a file in the hccapx folder with the extention of hccapx
    hccapx_file="~/Documents/Pwnagotchi_Files/hccapx/${pcap_file%.*}.hccapx"
    # convert the pcap to hccapx
    $(PATH_TO_CAP2HCCAPX $pcap_file $hccapx_file)
done
