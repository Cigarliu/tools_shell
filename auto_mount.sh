#!/bin/bash
#This script will automatically mount the USB drive . script by cigar


#Check if the USB is connected
if [ -e /dev/sda ]; then
    echo "USB is connected"
    #Check if the USB is already mounted
    if [ -e /mnt/usb ]; then
        echo "USB is already mounted"
    else
        echo "USB is not mounted"
        #Mount the USB
        # check mount point is available
        if [ -e /mnt/usb ]; then
            echo "USB is already mounted"
        else
            echo "USB is not mounted"
            # create mount point
            mkdir /mnt/usb
            
            #Mount the USB
            mount /dev/sda /mnt/usb
            echo "USB is mounted"
        fi
    fi
else
    echo "USB is not connected"
fi
