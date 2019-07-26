#
# Copyright (C) 2013 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from common
-include device/lge/gpad83-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := altev,vk810

# Kernel
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
TARGET_KERNEL_CONFIG := lineageos_vk810_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 23068672 # 22M
BOARD_CACHEIMAGE_PARTITION_SIZE := 1073741824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 23068672 # 22M
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648 # 2048M
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6189744128 # 5.9G

# inherit from the proprietary version
-include vendor/lge/vk810/BoardConfigVendor.mk

# TWRP
ifeq ($(WITH_TWRP),true)
-include device/lge/vk810/twrp.mk
endif
