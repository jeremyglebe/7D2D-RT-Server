# Shutdown the server
screen -S 7days_bgcommands -X stuff "shutdown^M"

# Kill all the screens
# https://stackoverflow.com/questions/14447131/kill-all-detached-screen-sessions
detached_sessions=$(screen -ls | grep Detached | cut -d. -f1 | awk '{print $1}')
for s in ${detached_sessions}
do
    screen -S "${s}" -X quit;
done