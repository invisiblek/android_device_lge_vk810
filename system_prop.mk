#
# system.prop for vk810
#
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/vendor/lib/libril-qc-qmi-1.so \
    ro.telephony.default_network=9 \
    persist.radio.apm_sim_not_pwdn=1 \
    ril.subscription.types=NV,RUIM \
    ro.ril.transmitpower=true \
    persist.qcril.disable_retry=true \
    telephony.lteOnGsmDevice=1 \
    ro.radio.noril=1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/vendor/lib/libqti-perfd-client.so
