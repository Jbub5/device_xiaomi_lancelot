#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/lancelot/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)

PRODUCT_NAME := voltage_lancelot
PRODUCT_DEVICE := lancelot
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 9

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=lancelot \
    BuildDesc="lancelot-user 11 RP1A.200720.011 V12.5.6.0.RJCMIXM release-keys" \
    BuildFingerprint=Redmi/lancelot_global/lancelot:11/RP1A.200720.011/V12.5.6.0.RJCMIXM:user/release-keys

# VoltageOS Stuffs
VOLTAGE_BUILD_TYPE := UNOFFICIAL

TARGET_BOOT_ANIMATION_RES := 1920

TARGET_FACE_UNLOCK_SUPPORTED := true

PRODUCT_NO_CAMERA := true

PRODUCT_PACKAGES += \
    Camera

# include private signing keys
-include vendor/voltage-priv/keys/keys.mk
