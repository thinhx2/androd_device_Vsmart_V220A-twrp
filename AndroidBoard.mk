LOCAL_PATH := $(call my-dir)

ifneq ($(filter V220,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
