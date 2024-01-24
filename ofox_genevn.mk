#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit some common TWRP/OFox stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from genevn device
$(call inherit-product, device/motorola/genevn/device.mk)

PRODUCT_DEVICE := genevn
PRODUCT_NAME := ofox_genevn
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola moto g stylus 5g (2023)
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=genevn \
    PRIVATE_BUILD_DESC="genevn-user 12 T1TGN33.60-114 7117f-b6786 release-keys"

BUILD_FINGERPRINT := motorola/genevn/genevn:12/T1TGN33.60-114/7117f-b6786:user/release-keys

