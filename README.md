# LinuxShellScripts
Some Shell Scripts I did for my Linux distro.


Basically, they're scripts from S4vitar's polybar, modified to display more information than default way.

# Ethernet_Status.sh
This script will try to catch IPv4 from Ethernet adapter, if it's not avaible, it will try to get Wi-Fi adapter one, if no one is avaible, the script will display a Disconnected status.
For this script to run, you need to edit the adapter name, for example:
ethernet=$(/usr/sbin/ifconfig **enp3s0** | grep "inet " | awk '{print $2}')

You will need to change like this:
ethernet=$(/usr/sbin/ifconfig **eth0** | grep "inet " | awk '{print $2}')

You should change the name of all adapters in the script this way, you can get the name executing the next command: **ifconfig -a**

# battery.sh
This script will display you the battery % in green if the laptop is charging, and in red if it is discharging.
The only thing you need to run this script correctly is install the package upower.
The command for Debian distro is:
**sudo apt update -y**
**sudo apt upgrade -y**
**sudo apt install upower**

# vpn_status.sh
This one, will tell you the internal IP from the VPN you're using. You should change the name of the adapter here too to make this script work properly.
The changes must be where it says the word **nordlynx**, at least if you don't use NordVPN.

You can search the icons to show in this scripts in HackNerdFonts, which is the one I am using, but I gues you can use anyone of your concern.

Enjoy it! :)
