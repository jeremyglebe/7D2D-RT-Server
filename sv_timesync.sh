while true
  do
    # Get time since server creation time
    now=$(TZ=":US/Central" date +%s)
    past=$(TZ=":US/Central" date +%s --date "2020-4-20")
    since=$(($now-$past))
    day=$(($since/(3600*24)))
    day=$(($day+1))

    # Get hour and minute of the current time
    hour=$(TZ=":US/Central" date +'%H')
    min=$(TZ=":US/Central" date +'%M')

    # Every 14 seconds, update the server time
    sleep 14
    echo "Updated time: D:${day} H:${hour} M:${min}"
    screen -S 7days_bgcommands -X stuff "settime ${day} ${hour} ${min}^M"
done
