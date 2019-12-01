sudo terminator -e iotop &
sudo terminator -e htop &
sudo terminator -e "iftop -i $1" &
sudo terminator -e powertop &
sudo terminator -e atop &
sudo terminator -e "nload $1" &
sudo terminator -e "sensors" &
