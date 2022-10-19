NUMBER_FILE_NAME="number.txt"
IP_ADDRESS_FILE_NAME="instance-ip.txt"
LOGS_NUM_FILE_NAME="logs-number-file.txt"
LOGS_IP_FILE_NAME="logs-ip-file.txt"
LOGS_TIME_FILE_NAME="logs-time-file.txt"

if [[ -e $NUMBER_FILE_NAME ]] && [[ -e $IP_ADDRESS_FILE_NAME ]]
    then
        next_ip_address=$(cat $IP_ADDRESS_FILE_NAME)
        echo "next instance's ip address: " $next_ip_address
        value=$(cat $NUMBER_FILE_NAME)
        echo "received number: " $value
        ((value++))
        echo "sending number: " $value
        echo $value > $NUMBER_FILE_NAME
        echo $value >> $LOGS_NUM_FILE_NAME
        echo $next_ip_address >> $LOGS_IP_FILE_NAME
        echo TIMESTAMP=`date +%Y-%m-%d_%H:%M`>> $LOGS_TIME_FILE_NAME
    else 
        echo "File not found"
fi