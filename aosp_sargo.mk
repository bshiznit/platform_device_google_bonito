#
# Copyright 2016 The Android Open Source Project
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

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

$(call inherit-product, device/google/bonito/device-sargo.mk)
$(call inherit-product-if-exists, vendor/google_devices/bonito/proprietary/device-vendor.mk)
$(call inherit-product-if-exists, vendor/pixelgapps/pixel-gapps.mk)

PRODUCT_PACKAGES += \
    Dialer \
    Launcher3 \
    WallpaperPicker

# STOPSHIP deal with Qualcomm stuff later
# PRODUCT_RESTRICT_VENDOR_FILES := all

PRODUCT_MANUFACTURER := Google
PRODUCT_BRAND := Google
PRODUCT_NAME := aosp_sargo
PRODUCT_DEVICE := sargo
PRODUCT_MODEL := Pixel 3a

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_DISPLAY_ID="PiePie-$(BUILD_ID)" \
    PRODUCT_NAME=sargo \
    BUILD_FINGERPRINT=google/sargo/sargo:9/PD2A.190115.032/5340326:user/release-keys \
    PRIVATE_BUILD_DESC="sargo-user 9 PD2A.190115.032 5340326 release-keys"

# Audio XMLs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml

