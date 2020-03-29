#
# Copyright 2012 The Android Open Source Project
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

# Inherit from our custom product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, vendor/pb/config/common.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/kernel:kernel \
	$(LOCAL_PATH)/recovery/root/etc/recovery.fstab:recovery.fstab \
	system/timezone/output_data/iana/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

PRODUCT_DEVICE	:= olive
PRODUCT_NAME	:= omni_olive
PRODUCT_BRAND	:= Xiaomi
PRODUCT_MODEL	:= Redmi 8
PRODUCT_MANUFACTURER := Xiaomi

TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1520

BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := false

PRODUCT_PROPERTY_OVERRIDES := ro.treble.enabled=true

PRODUCT_PROPERTY_OVERRIDES += \
	ro.build.version.security_patch=2099-12-31 \
	ro.vendor.build.security_patch=2099-12-31 \
	ro.product.cpu.abilist=arm64-v8a,armeabi-v7a,armeabi
