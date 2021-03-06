#
# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2014 SlimRoms Project
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
PRODUCT_RELEASE_NAME := p5100

# Boot animation
# TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 1280

# Inherit common Slim configuration
$(call inherit-product, vendor/slim/config/gsm.mk)
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# SlimRoms specific overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/p5100/overlay/slim
DEVICE_PACKAGE_OVERLAYS += device/samsung/espresso-common/overlay/slim-common

# Inherit device configuration
$(call inherit-product, device/samsung/p5100/aosp_p5100.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := slim_p5100

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="samsung/espresso10rfxx/espresso10rf:4.2.2/JDQ39/P5100XXDNA1:user/release-keys" \
    PRIVATE_BUILD_DESC="espresso10rfxx-user 4.2.2 JDQ39 P5100XXDNA1 release-keys"

# Packages
PRODUCT_PACKAGES += \
    SamsungServiceMode
