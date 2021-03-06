# Copyright (C) 2015 ParanoidAndroid Project
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

# Check for target product
ifeq (pa_flamingo,$(TARGET_PRODUCT))

# Include ParanoidAndroid common configuration
include vendor/pa/main.mk

# Inherit AOSP device configuration
$(call inherit-product, device/sony/flamingo/aosp_d2203.mk)
$(call inherit-product, device/sony/common/common_pa.mk)
include device/sony/common/CommonConfigPA.mk

# Override AOSP build properties
PRODUCT_NAME := pa_flamingo
PRODUCT_MODEL := Xperia E3 (AOSPA)

# Keep these values synchronised with the firmware versions used by
# AOSP blobs. Do NOT update blobs (and therefore these values) from
# a new factory image. Sony has provided AOSP specific blobs to use
# with AOSP; blobs from a factory image will NOT work.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=D2203 \
                                BUILD_FINGERPRINT="Sony/D2203/D2203:4.4.2/18.4.C.1.29/4nv_bQ:user/release-keys" \
                                PRIVATE_BUILD_DESC="D2203-user 4.4.2 18.4.C.1.29 4nv_bQ release-keys"

endif
