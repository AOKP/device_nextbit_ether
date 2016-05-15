BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE :=  4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000

BOARD_KERNEL_SEPARATED_DT := true
TARGET_KERNEL_SOURCE := kernel/nextbit/msm8992
TARGET_KERNEL_CONFIG := cyanogenmod_ether_defconfig
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_KERNEL_ARCH := arm64
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 boot_cpus=0-5
#BOARD_KERNEL_CMDLINE += zcache.enabled=1 zcache.compressor=lz4
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_APPEND_DTB := true
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset BOARD_RAMDISK_OFFSET --tags_offset BOARD_KERNEL_TAGS_OFFSET

ENABLE_CPUSETS := true
