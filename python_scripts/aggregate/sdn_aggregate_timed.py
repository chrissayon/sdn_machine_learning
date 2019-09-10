import requests
import csv
import json
import time

array_num = 0
dpid = "123917682137064"

# Create csn file
csv_open = csv.writer(open("attack_udp2_zodiac.csv","wb+"))
csv_open.writerow(["packet_count",
                    "byte_count",
                    "flow_count",
                    "seconds",
                    "api_retry"
                    ])

latest_packet_count = 0
latest_byte_count = 0

penultimate_packet_count = 0
penultimate_byte_count = 0

diff_packet_count = 0
diff_byte_count = 0

# Value to check how many times unable to get data from switch
no_data = 0

# Write to file
counter = 0

# Get time
t0 = time.time()
t1 = time.time()

while counter < 120:
    print(counter)

    t0 = time.time()
    # Send request
    response = requests.get('http://localhost:8080/stats/aggregateflow/123917682137064')

    if response.status_code != 200:
        # If bad response_code, send data and try again
        print("Failed to get data: ", response.status_code)
        time.sleep(2)
    else:
        # Convert data to JSON
        data = response.json()

        # Check if there's any data in the array
        if len(data[dpid]) != 0:
            penultimate_packet_count = latest_packet_count
            penultimate_byte_count   = latest_byte_count

            latest_packet_count  = data[dpid][array_num]["packet_count"]
            latest_byte_count  = data[dpid][array_num]["byte_count"]

            diff_packet_count = latest_packet_count - penultimate_packet_count
            diff_byte_count  = latest_byte_count - penultimate_byte_count

            csv_open.writerow([diff_packet_count,
                                diff_byte_count,
                                data[dpid][array_num]["flow_count"],
                                t0-t1,
                                no_data])

            # Increment loop counter
            counter += 1

            # Reset no_data variable
            no_data = 0

            # Wait 10 seconds for until next write
            t1 = time.time()
            time.sleep(10)

        else:
            # Increment no_data
            no_data += 1
            print("Array is empty")
            time.sleep(2)
