#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/motorola/genevn
DEVICE_PREBUILT_PATH := device/motorola/genevn/prebuilt

# A/B
AB_OTA_UPDATER := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := false
AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    product \
    system \
    system_ext \
    recovery \
    vbmeta \
    vbmeta_system \
    vendor \
    vendor_dlkm \
    vendor_boot

#  Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-2a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a55
TARGET_CPU_VARIANT_RUNTIME := cortex-a55

TARGET_2ND_ARCH := arm64
TARGET_2ND_ARCH_VARIANT := armv8-2a-dotprod
TARGET_2ND_CPU_ABI := arm64-v8a
TARGET_2ND_CPU_ABI2 := 
TARGET_2ND_CPU_VARIANT := cortex-a75
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a75

TARGET_SUPPORTS_64_BIT_APPS := true

# Bootloader
TARGET_NO_BOOTLOADER := false
TARGET_USES_UEFI := true
TARGET_USES_REMOTEPROC := true
TARGET_NO_RECOVERY := false

# Build Flags
LC_ALL="C"
ALLOW_MISSING_DEPENDENCIES := true
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
BUILD_BROKEN_MISSING_REQUIRED_MODULES := true
RELAX_USES_LIBRARY_CHECK := true
TARGET_DEVICE_ALT := genevn_g

# Display
TARGET_SCREEN_DENSITY := 400

# Kernel
BOARD_BOOT_HEADER_VERSION := 4
BOARD_KERNEL_BASE          := 0x00000000
BOARD_KERNEL_TAGS_OFFSET   := 0x00000100
BOARD_KERNEL_OFFSET        := 0x00008000
BOARD_RAMDISK_OFFSET       := 0x01000000
BOARD_DTB_OFFSET           := 0x01f00000
BOARD_KERNEL_CMDLINE += stack depot disable-on kasan.stacktrace-off kvm-arm.mode=protected cgroup_disable-pressure cgroup.memory=nokmem console=null loglevel-6 log_buf_len=256K kernel.panic_on_rcu_stall=1 loop.max part-7 pcie_ports=compat msm_rtb.filter=0x237 allow_mismatched_32bit_elo kasan=off rcupdate.rcu_expedited-1 Tou nocbs-0-7 ftrace_dump_on_oops pstore.compress=none kpti-0 swiotlb-noforce cgroup.memory=nokmem,nosocket kswapd per_node=2 slub_debug=- allow_file_spec_access cpufreq.default_governor-performance transparent_hugepage-never page_poison-on can.stats_timer=0 disable_dma32=on fsa4480_12c.async_probe=1 video=vfb:640x400,bpp=32,memsize=3072000 printk.devkmsg-on firmware_class.path=/vendor/ firmware_mnt/image bootconfig qcom_dload_mode.name=mini msm_drm.dsi_display0=qcom,mdss_dsi_mot_tm_ili7807s_660_1080x2400_dsc_vid_120hz: rootwait ro init=/init quiet
BOARD_BOOTCONFIG += \
    androidboot.hardware=qcom \
    androidboot.memcg=1 \
    androidboot.usbcontroller=a600000.dwc3 \
    msm_rtb.filter=0x237 \
    service_locator.enable=1 \
    androidboot.selinux=permissive

BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb $(DEVICE_PREBUILT_PATH)/dtb.img
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
BOARD_RAMDISK_USE_LZ4 := true

TARGET_PREBUILT_KERNEL := $(DEVICE_PREBUILT_PATH)/kernel.gz
TARGET_PREBUILT_DTB := $(DEVICE_PREBUILT_PATH)/dtb.img

# Copy DTB
PRODUCT_COPY_FILES += \
        $(TARGET_PREBUILT_DTB):dtb.img

TARGET_FORCE_PREBUILT_KERNEL := true
BOARD_USES_FULL_RECOVERY_IMAGE := true
BOARD_EXCLUDE_KERNEL_FROM_RECOVERY_IMAGE := true
BOARD_USES_GENERIC_KERNEL_IMAGE := true

# OrangeFox Variables
OF_AB_DEVICE_WITH_RECOVERY_PARTITION := true
OF_FLASHLIGHT_ENABLE := true
OF_HIDE_NOTCH := true
OF_PATCH_AVB20 := true
OF_USE_LOCKSCREEN_BUTTON := true
FOX_ENABLE_APP_MANAGER := true
OF_FORCE_PREBUILT_KERNEL := true
OF_DEFAULT_KEYMASTER_VERSION := 4.1
OF_DISABLE_MIUI_SPECIFIC_FEATURES := true
OF_DONT_PATCH_ENCRYPTED_DEVICE := true
FOX_USE_BASH_SHELL := true
FOX_ASH_IS_BASH := true
FOX_USE_TAR_BINARY := true
FOX_USE_SED_BINARY := true
FOX_USE_XZ_UTILS := true
FOX_USE_LZ4_UTILS := true
OF_KEEP_DM_VERITY := true
OF_RUN_POST_FORMAT_PROCESS := true
OF_SUPPORT_ALL_BLOCK_OTA_UPDATES := true
OF_USE_GREEN_LED := true
OF_NO_TREBLE_COMPATIBILITY_CHECK := true
OF_STATUS_INDENT_LEFT := 64
OF_STATUS_INDENT_RIGHT := 64
OF_ADVANCED_SECURITY := true
FOX_VERSION := S12.1
FOX_DELETE_AROMAFM := true
FOX_RECOVERY_VENDOR_PARTITION := '/dev/block/mapper/vendor'
FOX_RECOVERY_SYSTEM_PARTITION := '/dev/block/mapper/system'
TW_OVERRIDE_SYSTEM_PROPS := "ro.build.fingerprint=ro.system.build.fingerprint;ro.build.version.incremental"
TW_NO_USB_STORAGE := false
RECOVERY_SDCARD_ON_DATA := false
TW_INCLUDE_FASTBOOTD := true
TW_INCLUDE_PYTHON := true
TARGET_USES_MKE2FS := true

# OrangeFox Magisk Variables
OF_USE_LATEST_MAGISK := true
OF_USE_MAGISKBOOT_FOR_ALL_PATCHES := true
OF_USE_MAGISKBOOT := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext product vendor vendor_dlkm
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 6782189568
BOARD_SUPER_PARTITION_SIZE := 6786383872
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_KERNEL_GKI_BOOTIMAGE_PARTITION_SIZE := $(BOARD_BOOTIMAGE_PARTITION_SIZE)
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 104857600
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USES_METADATA_PARTITION := true
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_VENDOR_DLKM := vendor_dlkm
BOARD_VENDOR_DLKMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USES_VENDOR_DLKMIMAGE := true
TARGET_USERIMAGES_USE_EXT3 := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EROFS := true
TARGET_USERIMAGES_USE_E2FSCK := true
TARGET_USERIMAGES_USE_VFAT := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true

# Platform
TARGET_BOARD_PLATFORM := parrot
TARGET_BOOTLOADER_BOARD_NAME := parrot
QCOM_BOARD_PLATFORMS += parrot

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Recovery
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_RECOVERY_DEVICE_DIRS += $(DEVICE_PATH)
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab

# Hack - Anti-Rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)
BOOT_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)
PLATFORM_VERSION := 99.87.36
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)

# TWRP Configuration
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_LIBRESETPROP := true
TW_INCLUDE_NTFS_3G := true
TW_BACKUP_EXCLUSIONS := '/data/fonts'
TW_NO_SCREEN_BLANK := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_BRIGHTNESS_PATH := '/sys/devices/platform/soc/ae00000.qcom,mdss_mdp/backlight/panel0-backlight/brightness'
TW_MAX_BRIGHTNESS := 2047
TW_DEFAULT_BRIGHTNESS := 1024
TW_FRAMERATE := 60
TW_HAS_EDL_MODE := true
TW_INCLUDE_FASTBOOTD := true
TW_CUSTOM_CPU_TEMP_PATH := '/sys/class/thermal/thermal_zone39/temp'
TW_EXCLUDE_DEFAULT_USB_INIT := false
TARGET_USE_CUSTOM_LUN_FILE_PATH := '/config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file'
TW_SUPPORT_INPUT_AIDL_HAPTICS := true
TW_SUPPORT_INPUT_AIDL_HAPTICS_FIX_OFF := true
TW_EXCLUDE_APEX := true
TW_FORCE_KEYMASTER_VER := false
TW_USE_SERIALNO_PROPERTY_FOR_DEVICE_ID := true

# TWRP Crypto Configuration
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
BOARD_USES_METADATA_PARTITION := true
BOARD_USES_QCOM_FBE_DECRYPTION := true

# TWRP Debug Configuration
TARGET_USES_LOGD := true
TWRP_EVENT_LOGGING := false
TWRP_INCLUDE_LOGCAT := true
TARGET_RECOVERY_DEVICE_MODULES += debuggerd
TW_RECOVERY_ADDITIONAL_RELINK_FILES += $(TARGET_OUT_EXECUTABLES)/debuggerd
BOARD_RAMDISK_USE_LZMA := true
BUILD_BROKEN_MISSING_REQUIRED_MODULES := true

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

BOARD_AVB_VBMETA_SYSTEM := product system system_ext
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 2

BOARD_AVB_VBMETA_VENDOR := vendor vendor_dlkm
BOARD_AVB_VBMETA_VENDOR_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_VENDOR_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_VENDOR_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_VENDOR_ROLLBACK_INDEX_LOCATION := 3
