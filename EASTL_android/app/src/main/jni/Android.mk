LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := EASTL

EASTL_SOURCE = ../../../../../source
LOCAL_SRC_FILES := com_example_egret0_eastl_android_NativeUtils.cpp\
    $(EASTL_SOURCE)/allocator_eastl.cpp\
    $(EASTL_SOURCE)/assert.cpp\
    $(EASTL_SOURCE)/fixed_pool.cpp\
    $(EASTL_SOURCE)/hashtable.cpp\
    $(EASTL_SOURCE)/intrusive_list.cpp\
    $(EASTL_SOURCE)/numeric_limits.cpp\
    $(EASTL_SOURCE)/red_black_tree.cpp\
    $(EASTL_SOURCE)/string.cpp\
    $(EASTL_SOURCE)/thread_support.cpp

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../../../../include

include $(BUILD_SHARED_LIBRARY)
