#!/bin/bash
time_traffic=1         # (s) Traffic duration
packet_length=64  # length of the packet in bytes
destination_address="10.0.0.1"
traffic=200 # current traffic in Mbps


LOG_FILE="/home/user/Desktop/test/"

while [ 1 ]
	do
	LOG_TIME=`date +%b' '%d' '%T`
    	printf "$LOG_TIME $0: Current Flow: %s bytes with %s Mbps to %s\n" "$packet_length" "$traffic" "$destination_address"| tee -a $LOG_FILE
    	$(iperf -c $destination_address -u -l $packet_length -t $time_traffic -b "$traffic"M > log_"$time_traffic"Mbps_packet_length_"$packet_length"byte.txt &)

	done
