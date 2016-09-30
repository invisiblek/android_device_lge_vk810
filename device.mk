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

PRODUCT_CHARACTERISTICS := tablet
DEVICE_PACKAGE_OVERLAYS := device/lge/vk810/overlay

# Audio
PRODUCT_COPY_FILES += \
	device/lge/vk810/audio/audio_policy.conf:system/etc/audio_policy.conf \
	device/lge/vk810/audio/mixer_paths.xml:system/etc/mixer_paths.xml

PRODUCT_PACKAGES += \
	audio_policy.msm8960 \
	audio.primary.msm8960 \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default \
	libaudio-resampler

# Camera
PRODUCT_PACKAGES += \
	camera.msm8960 \
	Snap

# Dalvik
PRODUCT_TAGS += dalvik.gc.type-precise

# Display
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_PACKAGES += \
	libgenlock \
	liboverlay \
	hwcomposer.msm8960 \
	gralloc.msm8960 \
	copybit.msm8960 \
	memtrack.msm8960

PRODUCT_PACKAGES += \
	librs_jni

# Gello
PRODUCT_PACKAGES += \
	Gello

# GPS configuration
PRODUCT_COPY_FILES += \
	device/lge/vk810/configs/gps.conf:system/etc/gps.conf \
	device/lge/vk810/configs/sap.conf:system/etc/sap.conf

# Init
PRODUCT_PACKAGES += \
	fstab.altev \
	init.altev.baseband.sh \
	init.altev.rc \
	init.altev.usb.rc \
	init.qcom.bt.sh \
	ueventd.altev.rc

# Input device calibration
PRODUCT_COPY_FILES += \
	device/lge/vk810/idc/touch_mxt1188S.idc:system/usr/idc/touch_mxt1188S.idc

# IPv6 tethering
PRODUCT_PACKAGES += \
	ebtables \
	ethertypes

# IRSC
PRODUCT_COPY_FILES += \
	device/lge/vk810/configs/sec_config:system/etc/sec_config

# Keys
PRODUCT_COPY_FILES += \
	device/lge/vk810/keylayout/hs_detect.kl:system/usr/keylayout/hs_detect.kl \
	device/lge/vk810/keylayout/pmic8xxx_pwrkey.kl:system/usr/keylayout/pmic8xxx_pwrkey.kl \
	device/lge/vk810/keylayout/altev-keypad-8064.kl:system/usr/keylayout/altev-keypad-8064.kl

# Lights
PRODUCT_PACKAGES += \
	lights.msm8960
# Media
PRODUCT_PACKAGES += \
	libmm-omxcore \
	libdivxdrmdecrypt \
	libOmxVdec \
	libOmxVenc \
	libOmxCore \
	libOmxAacEnc \
	libOmxAmrEnc \
	libOmxEvrcEnc \
	libOmxQcelp13Enc \
	libstagefrighthw \
	libc2dcolorconvert

PRODUCT_COPY_FILES += \
	device/lge/vk810/configs/media_profiles.xml:system/etc/media_profiles.xml \
	device/lge/vk810/configs/media_codecs.xml:system/etc/media_codecs.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# Offmode Charging
PRODUCT_PACKAGES += \
	charger_res_images_vk810 \
	charger_vk810

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# Power HAL
PRODUCT_PACKAGES += \
	power.msm8960

# Radio
PRODUCT_PACKAGES += \
	libcnefeatureconfig \
	libxml2

# Shims
PRODUCT_PACKAGES += \
	libshim_camera \
	libshim_qcopt \
	libshim_ril

# SSL Compat
PRODUCT_PACKAGES += \
    libboringssl-compat

# Stlport
PRODUCT_PACKAGES += \
    libstlport

# Thermal Engine
PRODUCT_COPY_FILES += \
	device/lge/vk810/configs/thermal-engine-8064.conf:system/etc/thermal-engine-8064.conf

# Wifi
PRODUCT_COPY_FILES += \
	device/lge/vk810/wcnss/WCNSS_cfg.dat:system/vendor/firmware/wlan/prima/WCNSS_cfg.dat \
	device/lge/vk810/wcnss/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
	device/lge/vk810/wcnss/WCNSS_qcom_cfg.ini:system/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
	device/lge/vk810/wcnss/WCNSS_qcom_wlan_nv.bin:system/etc/wifi/WCNSS_qcom_wlan_nv.bin \
	device/lge/vk810/wcnss/WCNSS_qcom_wlan_nv_init.bin:system/vendor/firmware/wlan/prima/WCNSS_qcom_wlan_nv_init.bin

PRODUCT_PACKAGES += \
	conn_init \
	hostapd \
	libwpa_client \
	wpa_supplicant \
	wpa_supplicant.conf

$(call inherit-product, frameworks/native/build/tablet-7in-xhdpi-2048-dalvik-heap.mk)
