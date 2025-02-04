#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
DISABLE_ARTIFACT_PATH_REQUIREMENTS := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/barbet/aosp_barbet.mk)
$(call inherit-product, device/google/redbull/lineage_common.mk)

include device/google/barbet/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 5a
PRODUCT_NAME := lineage_barbet

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=barbet \
    PRIVATE_BUILD_DESC="barbet-user 13 TQ3A.230901.001 10750268 release-keys"

BUILD_FINGERPRINT := google/barbet/barbet:13/TQ3A.230901.001/10750268:user/release-keys


$(call inherit-product, vendor/google/barbet/barbet-vendor.mk)
