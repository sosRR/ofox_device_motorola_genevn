   	export DEVICE_PATH=device/motorola/genevn
# Change maintainer avatar directiory to your ~/folder/file.png or comment out
        export OF_MAINTAINER_AVATAR=$("ls" ~/avatar/sosRR.png)
        export OF_MAINTAINER=sosRR
        export FOX_BUILD_TYPE="Stable"
# run a process after formatting data to work-around MTP issues
	export OF_RUN_POST_FORMAT_PROCESS=1
        export OF_FBE_METADATA_MOUNT_IGNORE=1
        export OF_ENABLE_LPTOOLS=1
        export OF_UNBIND_SDCARD_F2FS=1
        export OF_KEEP_DM_VERITY=1
        export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=1
        export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1
        export OF_SUPPORT_ALL_PAYLOAD_OTA_UPDATES=1
        export OF_ENABLE_USB_STORAGE=1
        export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
	export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
	export OF_SUPPORT_OZIP_DECRYPTION=1
	export TW_OZIP_DECRYPT_KEY="0000"
#	 export FOX_USE_SPECIFIC_MAGISK_ZIP="~/magisk/Magisk-v26.4.zip"
        export FOX_USE_SPECIFIC_MAGISK_ZIP=$("ls" ~/Magisk/Magisk-v26.4.zip)
        export OF_USE_LATEST_MAGISK=1
