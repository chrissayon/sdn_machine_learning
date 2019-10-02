#!/bin/bash
time_traffic=1         # (s) Traffic duration
packet_length=64  # length of the packet in bytes
#destination_address="10.0.1.1"
ip_address_1=1
ip_address_2=1
maximum_ip_address=250
traffic=10 # current traffic in Mbps


LOG_FILE="/home/user/Desktop/test/"

while [ 1 ]
	do
	LOG_TIME=`date +%b' '%d' '%T`
    	printf "$LOG_TIME $0: Current Flow: %s bytes with %s Mbps to 10.0.%s.%s\n" "$packet_length" "$traffic" "$ip_address_2" "$ip_address_1"| tee -a $LOG_FILE
    	$(iperf -c 10.0.$ip_address_2.$ip_address_1 -u -l $packet_length -t $time_traffic -b "$traffic"M > log_"$time_traffic"Mbps_packet_length_"$packet_length"byte.txt &)

    	ip_address_1=$(( ip_address_1 + 1)) 

        if [ $ip_address_1 -gt 250 ]; then
		ip_address_1=1
		ip_address_2=$(( ip_address_2 + 1))
		if [ $ip_address_2 -gt 250 ]; then
                  ip_address_2=1
		fi
	fi
	done

