# The Sway configuration file in ~/.config/sway/config calls this script.
# You should see changes to the status bar after saving this script.
# If not, do "killall swaybar" and $mod+Shift+c to reload the configuration.

battery_status=$(~/.local/bin/statusbar/power.py)
date_formatted=$(~/.local/bin/statusbar/clock)
volume_level=$(~/.local/bin/statusbar/volume)
bluetooth=$(~/.local/bin/statusbar/bluetoof)
internet=$(~/.local/bin/statusbar/internet)

echo $date_formatted $internet $bluetooth$volume_level $battery_status
