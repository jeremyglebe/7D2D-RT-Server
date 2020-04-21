# Get SteamCMD
mkdir steamcmd_linux
cd steamcmd_linux
wget http://media.steampowered.com/installer/steamcmd_linux.tar.gz
tar xvzf steamcmd_linux.tar.gz
rm steamcmd_linux.tar.gz

# Start SteamCMD
INPUT=$'login anonymous\nforce_install_dir ../7daystodie\napp_update 294420\nquit\n'
./steamcmd.sh <<< "$INPUT"
cd ..

# Load the config file
CONFIG=$(<./7daystodie/serverconfig.xml)
# Edit the config file
CONFIG=$(echo "$CONFIG" | sed -e 's/AirDropFrequency.*72/AirDropFrequency" value="0/g')
# Save the config file
echo "$CONFIG" >./7daystodie/serverconfig.xml

# Add Cronjobs to run things daily/weekly/etc
# We can't do this with timesync b/c Cronjobs don't have subminute precision
# Instead time sync is a script with a sleep loop executed by sv_start.sh
{ crontab -l; echo "0 8 * * * sv_daily.sh"; } | crontab - # Runs the daily scripts at 8AM each day