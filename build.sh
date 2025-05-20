#!/bin/bash

#device tree 
git clone https://github.com/extreme729/android_device_samsung_a12 -b Lineage-20.0 device/samsung/a12

#vendor tree
git clone https://github.com/extreme729/android_vendor_samsung_a12 -b Lineage-20.0 vendor/samsung/a12

#kernrl source
git clone https://github.com/extreme729/android_kernel_samsung_a12 -b a125f-s6 kernel/samsung/a12

#syncing the source 
/opt/crave/resync.sh

#build setup
. build/envsetup.sh

#start the build
lunch lineage_a12-eng

#making 
mka bacon -j$(nproc --all)
