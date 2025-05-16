#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from tb8788p1_64_bsp device
$(call inherit-product, device/alps/tb8788p1_64_bsp/device.mk)

PRODUCT_DEVICE := tb8788p1_64_bsp
PRODUCT_NAME := omni_tb8788p1_64_bsp
PRODUCT_BRAND := alps
PRODUCT_MODEL := tb8788p1_64_bsp
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-joyar

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_tb8788p1_64_bsp-user 11 RP1A.200720.011 1719315783 release-keys"

BUILD_FINGERPRINT := alps/full_tb8788p1_64_bsp/tb8788p1_64_bsp:11/RP1A.200720.011/1719315783:user/release-keys
