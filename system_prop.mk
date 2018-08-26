#
# system.prop for vk810
#
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.cabc_off=true

PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libril-qc-qmi-1.so \
    ro.telephony.default_network=9 \
    persist.radio.apm_sim_not_pwdn=1 \
    ril.subscription.types=NV,RUIM \
    ro.ril.transmitpower=true \
    persist.qcril.disable_retry=true \
    telephony.lteOnGsmDevice=1 \
    ro.vendor.extension_library=/vendor/lib/libqti-perfd-client.so

PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196608 \
    persist.hwc.mdpcomp.enable=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.bt.bdaddr_path=/data/misc/bluetooth/bdaddr

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-swap=false

PRODUCT_PROPERTY_OVERRIDES += \
    debug.egl.recordable.rgba8888=1 \
    media.aac_51_output_enabled=true \
    persist.audio.handset.mic=digital \
    persist.audio.fluence.mode=endfire \
    persist.audio.lowlatency.rec=false

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sensors.wl_dis=true \
    ro.qualcomm.sensors.smd=true

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15

PRODUCT_PROPERTY_OVERRIDES += \
    ro.radio.noril=1

PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.legacyencoder=true \
    media.stagefright.less-secure=true
