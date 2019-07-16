# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lge/vk810/device.mk)
$(call inherit-product-if-exists, vendor/lge/vk810/vk810-vendor.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)
$(call inherit-product, vendor/lineage/config/telephony.mk)

PRODUCT_DEVICE := vk810
PRODUCT_NAME := lineage_vk810
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-VK810
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=altev_vzw \
	BUILD_FINGERPRINT=lge/altev_vzw/altev:5.0.2/LRX22G/151122132be69:user/release-keys \
	PRIVATE_BUILD_DESC="altev_vzw-user 5.0.2 LRX22G 151122132be69 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-verizon
