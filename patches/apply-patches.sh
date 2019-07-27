#!/bin/bash
cd ../../../..
echo install 1 patch
cd frameworks/av
git apply --ignore-space-change --ignore-whitespace -v ../../device/huawei/tango/patches/frameworks_av/0001-Disable-usage-of-get_capture_position.patch 
cd ../..
echo install 2 patch
cd frameworks/native
git apply --ignore-space-change --ignore-whitespace -v ../../device/huawei/tango/patches/frameworks_native_ui.patch
cd ../..
echo install 3 patch
cd system/core
git apply --ignore-space-change --ignore-whitespace -v ../../device/huawei/tango/patches/system_core/0001-Remove-CAP_SYS_NICE-from-surfaceflinger.patch
cd ../..
cd system/netd
git apply --ignore-space-change --ignore-whitespace -v ../../device/huawei/tango/patches/system_netd/0001-Revert-Don-t-start-tethering-if-IPv6-RPF-is-not-supp.patch
git apply --ignore-space-change --ignore-whitespace -v ../../device/huawei/tango/patches/system_netd/0002-Enable-Tethering.patch
cd ../..
echo install 4 patch
cd system/sepolicy
git apply --ignore-space-change --ignore-whitespace -v ../../device/huawei/tango/patches/system_sepolicy/0001-Revert-back-to-version-29.patch
cd ../..
echo Patches Applied Successfully!
