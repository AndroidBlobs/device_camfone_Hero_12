# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from Hero_12 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := camfone
PRODUCT_DEVICE := Hero_12
PRODUCT_MANUFACTURER := camfone
PRODUCT_NAME := lineage_Hero_12
PRODUCT_MODEL := Hero 12

PRODUCT_GMS_CLIENTID_BASE := android-camfone
TARGET_VENDOR := camfone
TARGET_VENDOR_PRODUCT_NAME := Hero_12
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="sn15k_64v8_gofu_osea-user 8.1.0 OPM2.171019.012 43517 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Camfone/Hero_12/Hero_12:8.1.0/OPM2.171019.012/35626:user/release-keys
