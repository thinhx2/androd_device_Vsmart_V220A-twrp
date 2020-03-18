DEVICE_PATH := device/Vsmart/V220A

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7

# Avb
BOARD_AVB_ENABLE := false

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6739
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32S1,32S1 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_HASH_TYPE := sha1
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x05000000
BOARD_SECOND_OFFSET := 0x00f00000
BOARD_KERNEL_TAGS_OFFSET := 0x04000000
BOARD_KERNEL_IMAGE_NAME := zImage
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/zImage
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE) --board ""

# Partition Size
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 283246592
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 25165824
BOARD_CACHEIMAGE_PARTITION_SIZE := 2332033024
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 830472192
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2449473536
BOARD_VENDORIMAGE_PARTITION_SIZE := 352321536
TARGET_USERIMAGES_USE_F2FS := true

# Platform
TARGET_BOARD_PLATFORM := mt6739

# Display
TARGET_SCREEN_HEIGHT := 1440
TARGET_SCREEN_WIDTH := 720

#Allow_missing_dependencies
ALLOW_MISSING_DEPENDENCIES=true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
RECOVERY_VARIANT := twrp
TW_INCLUDE_CRYPTO := true
TW_THEME := dight_hdpi
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
TW_USE_TOOLBOX := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 120
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
