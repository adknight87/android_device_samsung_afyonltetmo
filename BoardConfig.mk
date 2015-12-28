# Copyright (C) 2014 The CyanogenMod Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# inherit from msm8226-common
-include device/samsung/msm8226-common/BoardConfigCommon.mk

TARGET_SPECIFIC_HEADER_PATH := device/samsung/afyonltetmo/include

# inherit from the proprietary version
-include vendor/samsung/afyonltetmo/BoardConfigVendor.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := afyonltetmo,afyonltemtr,SM-G386T,SM-G386T1,SM-G386W,G386T,G386T1

# Kernel
BOARD_KERNEL_CMDLINE := console=null androidboot.console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 androidboot.selinux=permissive
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/afyonltetmo/mkbootimg.mk
BOARD_KERNEL_BASE := 0x00000000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x1e00000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
TARGET_KERNEL_CONFIG := msm8226-sec_defconfig
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/msm8226
TARGET_KERNEL_VARIANT_CONFIG := msm8926-sec_afyonltetmo_defconfig

# Audio
AUDIO_FEATURE_DISABLED_ANC_HEADSET := true
AUDIO_FEATURE_DISABLED_MULTI_VOICE_SESSIONS := true
TARGET_QCOM_AUDIO_VARIANT := caf

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/afyonltetmo/bluetooth

# Camera
# COMMON_GLOBAL_CFLAGS += -DSAMSUNG_CAMERA_HARDWARE
# BOARD_USES_LEGACY_MMAP := true

# CMHW
BOARD_HARDWARE_CLASS += device/samsung/afyonltetmo/cmhw

# Encryption
TARGET_HW_DISK_ENCRYPTION := true

# Media
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
TARGET_QCOM_MEDIA_VARIANT := caf-new

# NFC
BOARD_NFC_HAL_SUFFIX := msm8226

# OMX
BOARD_USES_PROPRIETARY_OMX := SAMSUNG

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_SYSTEMIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2411724800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12631588352

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
TARGET_USES_QCOM_BSP := true

# Recovery
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
TARGET_RECOVERY_FSTAB := device/samsung/afyonltetmo/rootdir/fstab.qcom

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# Vendor Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := device/samsung/afyonltetmo/init/init_afyonlte.c

