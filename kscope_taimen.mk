#
# Copyright (C) 2022 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Project Kscope stuff.
$(call inherit-product, vendor/kscope/target/product/mobile.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit AOSP device configuration for Taimen
$(call inherit-product, device/google/taimen/aosp_taimen.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1440

# Override AOSP build properties
PRODUCT_NAME := kscope_taimen
PRODUCT_DEVICE := taimen
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2 XL
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="taimen" \
    PRIVATE_BUILD_DESC="taimen-user 11 RP1A.201005.004.A1 6934943 release-keys"

BUILD_FINGERPRINT := "google/taimen/taimen:11/RP1A.201005.004.A1/6934943:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/taimen/taimen:11/RP1A.201005.004.A1/6934943:user/release-keys

$(call inherit-product, vendor/google/taimen/taimen-vendor.mk)
