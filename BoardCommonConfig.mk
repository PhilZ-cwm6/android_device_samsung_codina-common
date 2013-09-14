#
# Copyright (C) 2013 The Android Open Source Project
# Copyright (C) 2013 The CyanogenMod Project
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

-include device/samsung/u8500-common/BoardCommonConfig.mk

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1258291200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1572846592
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/codina-common
TARGET_KERNEL_SELINUX_CONFIG := codinaselinux_defconfig
TARGET_USE_ST_ERICSSON_KERNEL := true
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/codina-common/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/codina-common/bluetooth/btvendor_codina.txt

# Vold
BOARD_VOLD_MAX_PARTITIONS := 25
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true

# Recovery
TARGET_RECOVERY_INITRC := device/samsung/codina-common/recovery/init.rc
TARGET_RECOVERY_FSTAB := device/samsung/codina-common/rootdir/fstab.samsungcodina
RECOVERY_FSTAB_VERSION := 2

# SELinux
# BOARD_SEPOLICY_DIRS += \
#        device/samsung/codina-common/sepolicy

# BOARD_SEPOLICY_UNION += \
#    device.te \
#    domain.te \
#    file.te \
#    file_contexts \
#    rild.te

