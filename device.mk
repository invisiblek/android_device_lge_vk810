#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PACKAGE_OVERLAYS := device/lge/vk810/overlay

# Inherit from gpad83-common
$(call inherit-product, device/lge/gpad83-common/gpad83-common.mk)

# Rootdir
PRODUCT_COPY_FILES += \
    device/lge/vk810/rootdir/fstab.altev:root/fstab.altev \
    device/lge/vk810/rootdir/init.target.rc:root/init.target.rc \

# Wifi
PRODUCT_COPY_FILES += \
    device/lge/vk810/wifi/WCNSS_cfg.dat:system/vendor/firmware/wlan/prima/WCNSS_cfg.dat \
    device/lge/vk810/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    device/lge/vk810/wifi/WCNSS_qcom_cfg.ini:system/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    device/lge/vk810/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/wifi/WCNSS_qcom_wlan_nv.bin
