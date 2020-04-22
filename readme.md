# 7 Days to Die Realtime Server Scripts
These are not ready to use yet... Just a work in progress.
A solution to partially emulate 1:1 time progression in a 7 Days to Die server.
By default, the time maxes out around 1:4 (1 minute in real life = 4 in game)
before everything starts to get buggy.
The setup and scripts only work in a Bash environment on a Linux machine. It's
tested on Ubuntu but I have no reason to believe it won't work elsewhere.

The server will be managed by a new user. That user will be called "7days".
Adding the user requires root priveleges, so make sure you start `setup.sh`
from a root user.

There may be better/alternate methods of setup. I'm fairly new to this sort of
thing so I've open sourced the project with the intention to get help. So,
don't be afraid to correct me on something or offer a better answer. I will
carefully consider any contributions that anyone makes.