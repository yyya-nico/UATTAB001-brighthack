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

# fukiame - i only need the minimum brightness lol
#   also this should scale linearly, not in set marks like this

#elif [[ ${BRIGHTNESS} == 8 ]]; then
#
#  echo 2 > ${BRIGHTNESS_FILE}
#
#elif [[ ${BRIGHTNESS} == 12 ]]; then
#
#  echo 5 > ${BRIGHTNESS_FILE}

fi

exit 0
