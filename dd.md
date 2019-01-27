# DD

Insert the original sd card and check the name of the device (usually mmcblkX or sdcX):
``sudo fdisk -l

In my case the sd card is /dev/mmsbkl0. Now you have to unmount the device:
``sudo umount /dev/mmcblk0

Now to create an image of the device:
``sudo dd if=/dev/mmcblk0 of=~/sd-card-copy.img

This will take a while.

Once it's finished, insert the empty sd card. If the device is different (USB or other type of sd card reader) verify its name and be sure to unmount it:
``sudo fdisk -l
``sudo umount /dev/mmcblk0

Write the image to the device:
``sudo dd if=~/sd-card-copy.img of=/dev/mmcblk0

The write operation is much slower than before.