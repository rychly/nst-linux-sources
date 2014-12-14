#!/bin/sh

DIR=$(dirname "${0}")

	#omap3621_gossamer_evt1c_defconfig \
for I in \
	uImage \
	modules \
	uImage \
; do
	PATH="${DIR}../u-boot/tools":${PATH} \
	make ARCH=arm CROSS_COMPILE=arm-none-linux-gnueabi- \
	$* "${I}"
done
