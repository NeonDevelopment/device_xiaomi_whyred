#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# $(call inherit-product, device/sample/products/backup_overlay.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Bootanimation
TARGET_BOOTANIMATION_SIZE := 1080p

DEVICE_PACKAGE_OVERLAYS += device/xiaomi/whyred/overlay
DEVICE_PACKAGE_OVERLAYS += vendor/omni/overlay/CarrierConfig

# Inherit from Omni custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from whyred device
$(call inherit-product, device/xiaomi/whyred/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_whyred
PRODUCT_DEVICE := whyred
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 5 Pro

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=whyred PRODUCT_NAME=whyred
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="whyred-user 8.1.0 OPM1.171019.011 V9.5.11.0.OEIMIFA release-keys"
BUILD_FINGERPRINT := xiaomi/whyred/whyred:8.1.0/OPM1.171019.011/V9.5.11.0.OEIMIFA:user/release-keys
