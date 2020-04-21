# Create screens
screen -dmS 7days_server
screen -dmS 7days_telnet
screen -dmS 7days_timesync

# Start Server
screen -S 7days_server -X stuff "cd 7daystodie && ./startserver.sh -configfile=serverconfig.xml ^M"

# Start Telnet Admin Console
sleep 10
screen -S 7days_telnet -X stuff "telnet localhost 8081^M"

# Start Time Sync
sleep 10
screen -S 7days_timesync -X stuff "./sv_time_sync.sh ^M"
