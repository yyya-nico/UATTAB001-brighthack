#!/system/bin/sh

# This script checks the current brightness
# and offsets the values. It could surely 
# be made more robust. Currently un-tested 
# on Oxygen OS.

BRIGHTNESS_FILE=/sys/class/leds/lcd-backlight/brightness

BRIGHTNESS=$(cat ${BRIGHTNESS_FILE})

#echo $BRIGHTNESS

if [[ ${BRIGHTNESS} == 90 ]]; then

  echo 3 > ${BRIGHTNESS_FILE}

elif [[ ${BRIGHTNESS} == 98 ]]; then

  echo 30 > ${BRIGHTNESS_FILE}

elif [[ ${BRIGHTNESS} == 106 ]]; then

  echo 80 > ${BRIGHTNESS_FILE}

fi

exit 0
