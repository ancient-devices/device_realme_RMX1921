#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Ancient stuff
TARGET_GAPPS_ARCH := arm64
TARGET_FACE_UNLOCK_SUPPORTED := true
IS_PHONE := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_GOOGLE_RECORDER := false
$(call inherit-product, vendor/ancient/config/common_full_phone.mk)

# Inherit from RMX1921 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Official-ify
ANCIENT_OFFICIAL=true
FORCE_OTA=true

PRODUCT_BRAND := Realme
PRODUCT_DEVICE := RMX1921
PRODUCT_MANUFACTURER := Realme
PRODUCT_NAME := ancient_RMX1921
PRODUCT_MODEL := Realme XT

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="coral-user 11 RP1A.201005.004 6782484 release-keys" \
    PRODUCT_NAME="RMX1921"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/coral/coral:11/RP1A.201005.004/6782484:user/release-keys
