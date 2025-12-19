dispaly_cpu_usage () {
    echo "CPU usage:"
    iostat -c 1 5 | awk -F' ' '$6 ~ /[0-9.]+/ {print 100 - $6 "% used"}'
}

display_memory_usage () {
    echo "Memory usage:"
    top -a -n 1 | awk 'NR>20{exit} NR>19' 
}

display_disk_usage () {
    echo "Disk usage:"

}