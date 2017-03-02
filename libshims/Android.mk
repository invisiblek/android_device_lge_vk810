LOCAL_PATH := $(call my-dir)

# camera
include $(CLEAR_VARS)
LOCAL_SRC_FILES := libshim_camera.c
LOCAL_SHARED_LIBRARIES := libutils
LOCAL_MODULE := libshim_camera
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

# libqc-opt
include $(CLEAR_VARS)
LOCAL_SRC_FILES := icu53.c
LOCAL_SHARED_LIBRARIES := libicuuc libicui18n
LOCAL_MODULE := libshim_qcopt
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

# ril symbols
include $(CLEAR_VARS)
LOCAL_SRC_FILES := ril.cpp
LOCAL_SHARED_LIBRARIES := libbinder
LOCAL_MODULE := libshim_ril
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
