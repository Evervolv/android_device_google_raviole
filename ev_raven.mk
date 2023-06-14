#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Evervolv stuff.
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_raven.mk)

$(call inherit-product, device/google/gs101/evervolv_common.mk)

include device/google/raviole/raven/device-evervolv.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_NAME := ev_raven

# Boot animation
BOOT_ANIMATION_SIZE := 1440p

# Codename
PRODUCT_CODENAME := Acerbus

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=raven \
    PRIVATE_BUILD_DESC="raven-user 13 TQ3A.230605.010 10121037 release-keys"

BUILD_FINGERPRINT := google/raven/raven:13/TQ3A.230605.010/10121037:user/release-keys

$(call inherit-product, vendor/google/raven/raven-vendor.mk)
