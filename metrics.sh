#!/bin/bash




while true; do
    # Get the current date and time
    current_time=$(date "+%Y-%m-%d %H:%M:%S")

    # Collect and report system health information

    # 1. CPU Usage
    cpu_usage=$(top -n 1 | grep "Cpu(s)" | awk '{print $2}')

    # 2. Memory Usage
    memory_usage=$(free -m | grep "Mem:" | awk '{print $3}')

    # 3. Disk Usage
    disk_usage=$(df -h / | awk '{print $5}' | sed '1d')

    # 4. Active Users
    active_users=$(who | awk '{print $1}' | sort | uniq)

    # 5. Running Processes
    running_processes=$(ps aux | wc -l)

    # Output the system health information

    echo "System Health Report for $current_time"
    echo "-----------------------------------"
    echo "1. CPU Usage: $cpu_usage%"
    echo "2. Memory Usage: $memory_usage MB"
    echo "3. Disk Usage: $disk_usage"
    echo "4. Active Users: $active_users"
    echo "5. Running Processes: $running_processes"

    # Save the report to a file
    #echo -e "\nSystem Health Report for $current_time" >> system_health_report.txt
    #echo "-----------------------------------" >> system_health_report.txt
    #echo "1. CPU Usage: $cpu_usage%" >> system_health_report.txt
    #echo "2. Memory Usage: $memory_usage MB" >> system_health_report.txt
    #echo "3. Disk Usage: $disk_usage" >> system_health_report.txt
    #echo "4. Active Users: $active_users" >> system_health_report.txt
    #echo "5. Running Processes: $running_processes" >> system_health_report.txt



    ((counter++))
 
    if [ "$counter" -eq 720 ]; then
 
        sed -i '1,7d;' "/root/metrics.txt"
 
    fi

    # Sleep for 5 seconds before the next iteration
    sleep 5
done
