import requests
import csv
import json

response = requests.get('http://localhost:8080/stats/port/1')

if response.status_code != 200:
    print("Failed to get data: ", response.status_code)
else:
    data = response.json()
    print(data["1"][1])
    #print(data["1"][1]["rx_packets"])

    data_dict = json.loads(response.text)
    #print(data_dict['rx_packets'])

    csv_open = csv.writer(open("data.csv","wb+"))
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
    csv_open.writerow([data["1"][1]["port_no"],
                        data["1"][1]["rx_packets"],
                        data["1"][1]["tx_packets"],
                        data["1"][1]["rx_bytes"],
                        data["1"][1]["tx_bytes"],
                        data["1"][1]["rx_dropped"],
                        data["1"][1]["tx_dropped"],
                        data["1"][1]["rx_errors"],
                        data["1"][1]["tx_errors"],
                        data["1"][1]["rx_frame_err"],
                        data["1"][1]["rx_over_err"],
                        data["1"][1]["rx_crc_err"],
                        data["1"][1]["collisions"],
                        data["1"][1]["duration_sec"],
                        data["1"][1]["duration_nsec"]])
