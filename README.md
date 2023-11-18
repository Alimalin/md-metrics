

# Linux Metrics Collection Project

## Overview

This project involves collecting metrics from the Linux operating system(CENTOS). The project folder contains all the necessary files to generate these metrics.

## Project Structure

- **start_metrics.sh**: This script is used to initiate the metric collection process. When executed, it creates a systemd file -which runs metrics.sh script continuously.

## Instruction 

Run the following command from /root directory

git clone https://github.com/Alimalin/md-metrics.git

cd  md-metrics

bash start_metrics.sh

## Metric Storage

Metrics generated from the system are stored in the `/root/metrics.txt` file.

## Cleanup

To prevent the `/root/metrics.txt` file from consuming unreasonable disk space, old metrics are pushed out of the the file.

## Usage

1. Run the `start_metrics.sh` script to initiate metric collection.
2. Metrics will be stored in `/root/metrics.txt`.

