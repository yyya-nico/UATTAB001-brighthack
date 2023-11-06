#!/system/bin/sh

# This script checks the current brightness
# and offsets the values. It could surely 
# be made more robust. Currently un-tested 
# on Oxygen OS.

BRIGHTNESS_FILE=/sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness

BRIGHTNESS=$(cat ${BRIGHTNESS_FILE})

#echo $BRIGHTNESS

case ${BRIGHTNESS} in
  128) echo   1 > ${BRIGHTNESS_FILE};;
  129) echo  32 > ${BRIGHTNESS_FILE};;
  130) echo  64 > ${BRIGHTNESS_FILE};;
  131) echo  96 > ${BRIGHTNESS_FILE};;
  132) echo 128 > ${BRIGHTNESS_FILE};;
esac

exit 0
