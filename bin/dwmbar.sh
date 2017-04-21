while true; do

# Power/Battery Status
if [ "$( cat /sys/class/power_supply/AC/online )" -eq "1" ]; then
        DWM_BATTERY="AC";
        DWM_RENEW_INT=3;
else
        DWM_BATTERY=$(( `cat /sys/class/power_supply/BAT0/energy_now` * 100 / `cat /sys/class/power_supply/BAT0/energy_full` ));
        DWM_RENEW_INT=30;
fi;

# Powersave toggle
if [ "$( cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor )" = "powersave" ]; then
        DWM_PWRSAVE="|S"
else
        DWM_PWRSAVE="";
fi;



# Wi-Fi eSSID
if [ "$( cat /sys/class/net/wlp3s0/phy80211/rfkill2/state )" -eq "1" ]; then
		  DWM_ESSID=$( /sbin/iwgetid -r ); 
else
		  DWM_ESSID="OFF";
fi;
# Volume Level
DWM_VOL=$( amixer  sget Master | awk 'NR==6 { print $5$6 }' );

# Date and Time
DWM_CLOCK=$( date '+%a%e %b %Y | %k:%M' );

# Overall output command
DWM_STATUS="WiFi: [$DWM_ESSID] | Power: [$DWM_BATTERY$DWM_PWRSAVE]  | Vol: $DWM_VOL | $DWM_CLOCK";
xsetroot -name "$DWM_STATUS";
sleep $DWM_RENEW_INT;

done &
