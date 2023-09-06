#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Spacewar device
$(call inherit-product, device/nothing/Spacewar/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Spacewar Properties
TARGET_ENABLE_BLUR := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_HAS_UDFPS := true

# Camera
TARGET_USES_NOTHING_CAMERA := true
TARGET_NEEDS_64BIT_CAMERA_USAGE_FLAGS := true
TARGET_CAMERA_USES_NEWER_HIDL_OVERRIDE_FORMAT := true

# Alpha Properties
TARGET_INCLUDE_MATLOG := false
TARGET_USE_GRAPHENE_CAMERA := false
TARGET_USE_PIXEL_LAUNCHER := false
ALPHA_MAINTAINER := Mejsi
WITH_GAPPS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_Spacewar
PRODUCT_DEVICE := Spacewar
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A063
PRODUCT_MANUFACTURER := Nothing

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=Spacewar \
    PRIVATE_BUILD_DESC="Spacewar-user 12 SKQ1.211230.001 1666412462 release-keys"

BUILD_FINGERPRINT := Nothing/Spacewar/Spacewar:12/SKQ1.211230.001/1666412462:user/release-keys
