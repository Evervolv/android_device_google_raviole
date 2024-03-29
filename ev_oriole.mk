#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Evervolv stuff.
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_oriole.mk)

$(call inherit-product, device/google/gs101/evervolv_common.mk)

include device/google/raviole/oriole/device-evervolv.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6
PRODUCT_NAME := ev_oriole

# Boot animation
BOOT_ANIMATION_SIZE := 1080p

# Codename
PRODUCT_CODENAME := Candidus

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=oriole \
    PRIVATE_BUILD_DESC="oriole-user 13 TQ1A.230205.002 9471150 release-keys" \
    BUILD_THUMBPRINT="13/TQ1A.230205.002/9471150:user/release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:13/TQ1A.230205.002/9471150:user/release-keys

$(call inherit-product, vendor/google/oriole/oriole-vendor.mk)
