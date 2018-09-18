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

# Release name
PRODUCT_RELEASE_NAME := nitrogen

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)


# Inherit from nitrogen device
$(call inherit-product, device/xiaomi/nitrogen/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_nitrogen
PRODUCT_DEVICE := nitrogen
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi Max 3
PRODUCT_FULL_TREBLE_OVERRIDE := true

TARGET_VENDOR_PRODUCT_NAME := nitrogen
TARGET_VENDOR_DEVICE_NAME := nitrogen
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=nitrogen PRODUCT_NAME=nitrogen
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="nitrogen-user 8.1.0 OPM1.171019.019 V9.6.12.0.OEDCNFD release-keys"
BUILD_FINGERPRINT := Xiaomi/nitrogen/nitrogen:8.1.0/OPM1.171019.019/V9.6.12.0.OEDCNFD:user/release-keys
