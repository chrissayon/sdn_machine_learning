import requests
import csv
import json
import time

array_num = 1

# Create csn file
csv_open = csv.writer(open("attack2.csv","wb+"))
csv_open.writerow(["port_no",
                    "rx_packets",
                    "tx_packets",
                    "rx_bytes",
                    "tx_bytes",
                    "rx_dropped",
                    "tx_dropped",
                    "rx_errors",
                    "tx_errors",
                    "rx_frame_err",
                    "rx_over_err",
                    "rx_crc_err",
                    "collisions",
                    "duration_sec",
                    "duration_nsec"
                    ])

latest_rx_packets = 0
latest_tx_packets = 0
latest_rx_bytes = 0
latest_tx_bytes = 0
latest_rx_dropped = 0
latest_tx_dropped = 0
latest_rx_errors = 0
latest_tx_errors = 0
latest_rx_frame_err = 0
latest_rx_over_err = 0
latest_rx_crc_err = 0
latest_collisions = 0
latest_duration_sec = 0
latest_duration_nsec = 0

penultimate_rx_packets = 0
penultimate_tx_packets = 0
penultimate_rx_bytes = 0
penultimate_tx_bytes = 0
penultimate_rx_dropped = 0
penultimate_tx_dropped = 0
penultimate_rx_errors = 0
penultimate_tx_errors = 0
penultimate_rx_frame_err = 0
penultimate_rx_over_err = 0
penultimate_rx_crc_err = 0
penultimate_collisions = 0
penultimate_duration_sec = 0
penultimate_duration_nsec = 0

diff_rx_packets = 0
diff_tx_packets = 0
diff_rx_bytes = 0
diff_tx_bytes = 0
diff_rx_dropped = 0
diff_tx_dropped = 0
diff_rx_errors = 0
diff_tx_errors = 0
diff_rx_frame_err = 0
diff_rx_over_err = 0
diff_rx_crc_err = 0
diff_collisions = 0
diff_duration_sec = 0
diff_duration_nsec = 0

# Write to file
for x in range (20):
    print(x)
    time.sleep(1)

    # Send request
    response = requests.get('http://localhost:8080/stats/port/1')

    if response.status_code != 200:
        print("Failed to get data: ", response.status_code)
    else:
        data = response.json()

        penultimate_rx_packets    = latest_rx_packets
        penultimate_tx_packets    = latest_tx_packets
        penultimate_rx_bytes      = latest_rx_bytes
        penultimate_tx_bytes      = latest_tx_bytes
        penultimate_rx_dropped    = latest_rx_dropped
        penultimate_tx_dropped    = latest_tx_dropped
        penultimate_rx_errors     = latest_rx_errors
        penultimate_tx_errors     = latest_tx_errors
        penultimate_rx_frame_err  = latest_rx_frame_err
        penultimate_rx_over_err   = latest_rx_over_err
        penultimate_rx_crc_err    = latest_rx_crc_err
        penultimate_collisions    = latest_collisions
        penultimate_duration_sec  = latest_duration_sec
        penultimate_duration_nsec = latest_duration_nsec

        latest_rx_packets    = data["1"][array_num]["rx_packets"]
        latest_tx_packets    = data["1"][array_num]["tx_packets"]
        latest_rx_bytes      = data["1"][array_num]["rx_bytes"]
        latest_tx_bytes      = data["1"][array_num]["tx_bytes"]
        latest_rx_dropped    = data["1"][array_num]["rx_dropped"]
        latest_tx_dropped    = data["1"][array_num]["tx_dropped"]
        latest_rx_errors     = data["1"][array_num]["rx_errors"]
        latest_tx_errors     = data["1"][array_num]["tx_errors"]
        latest_rx_frame_err  = data["1"][array_num]["rx_frame_err"]
        latest_rx_over_err   = data["1"][array_num]["rx_over_err"]
        latest_rx_crc_err    = data["1"][array_num]["rx_crc_err"]
        latest_collisions    = data["1"][array_num]["collisions"]
        latest_duration_sec  = data["1"][array_num]["duration_sec"]
        latest_duration_nsec = data["1"][array_num]["duration_nsec"]

        diff_rx_packets    = latest_rx_packets - penultimate_rx_packets
        diff_tx_packets    = latest_tx_packets - penultimate_tx_packets
        diff_rx_bytes      = latest_rx_bytes - penultimate_rx_bytes
        diff_tx_bytes      = latest_tx_bytes - penultimate_tx_bytes
        diff_rx_dropped    = latest_rx_dropped - penultimate_rx_dropped
        diff_tx_dropped    = latest_tx_dropped - penultimate_tx_dropped
        diff_rx_errors     = latest_rx_errors - penultimate_rx_errors
        diff_tx_errors     = latest_tx_errors - penultimate_tx_errors
        diff_rx_frame_err  = latest_rx_frame_err - penultimate_rx_frame_err
        diff_rx_over_err   = latest_rx_over_err - penultimate_rx_over_err
        diff_rx_crc_err    = latest_rx_crc_err - penultimate_rx_crc_err
        diff_collisions    = latest_collisions - penultimate_collisions
        diff_duration_sec  = latest_duration_sec - penultimate_duration_sec
        diff_duration_nsec = latest_duration_nsec - penultimate_duration_nsec


        csv_open.writerow([data["1"][array_num]["port_no"],
                            diff_rx_packets,
                            diff_tx_packets,
                            diff_rx_bytes,
                            diff_tx_bytes,
                            diff_rx_dropped,
                            diff_tx_dropped,
                            diff_rx_errors,
                            diff_tx_errors,
                            diff_rx_frame_err,
                            diff_rx_over_err,
                            diff_rx_crc_err,
                            diff_collisions,
                            diff_duration_sec,
                            diff_duration_nsec])
