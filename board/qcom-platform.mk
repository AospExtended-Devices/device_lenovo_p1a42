# Platform
TARGET_CYANOGEN_COMMON := msm8939

TARGET_BOARD_PLATFORM := msm8916

# Architecture
TARGET_BOARD_SUFFIX := _64
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_USES_64_BIT_BINDER := true

# Init
#TARGET_UNIFIED_DEVICE := true
#TARGET_INIT_VENDOR_LIB := libinit_passion_row
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/
#TARGET_RECOVERY_DEVICE_MODULES := libinit_passion_row

# Qualcomm support
#BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QC_TIME_SERVICES := true
TARGET_POWERHAL_VARIANT := qcom
TARGET_RIL_VARIANT := caf
#TARGET_TAP_TO_WAKE_NODE := "/sys/class/tp_gesture/tp_device/tp_gesture_id"

# RELEASETOOLS
TARGET_RELEASETOOLS_EXTENSIONS := $(LOCAL_PATH)

ifneq ($(QCPATH),)
BOARD_USES_QCNE := true
TARGET_LDPRELOAD := libNimsWrap.so
endif
BOARD_USES_QCOM_HARDWARE := true


