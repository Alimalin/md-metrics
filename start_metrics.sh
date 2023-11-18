#!/bin/bash

# Source and destination paths
metrics_service_source="$(pwd)/metrics.service"
metrics_service_destination="/etc/systemd/system/"

sed -i "s|ExecStart=/bin/bash -c \'/root/md-metrics/metrics.sh >> /root/metrics.txt\'|ExecStart=/bin/bash -c $pwd/metrics.sh >> /root/metrics.txt|" metrics.service

# Copy metrics.service to /etc/systemd/system/

if [ ! -e "$metrics_service_destination/metrics.service" ]; then

    cp "$metrics_service_source" "$metrics_service_destination"
fi



# Reload systemd manager configuration
systemctl daemon-reload > /dev/null

# Start and enable the metrics service
systemctl start metrics.service > /dev/null
systemctl enable metrics.service > /dev/null
