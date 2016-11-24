LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := EASTL
LOCAL_SRC_FILES := com_example_egret0_eastl_android_NativeUtils.cpp

include $(BUILD_SHARED_LIBRARY)
