LOCAL_PATH:= $(call my-dir)

include $(LOCAL_PATH)/../config.mk

MY_SDK="notdef"

ifeq ($(JB42_AND_NEWER), yes)
MY_SDK=ajb42
endif

ifeq ($(KITKAT_AND_NEWER), yes)
MY_SDK=akk44
endif

ifeq ($(LOLLIPOP_AND_NEWER), yes)
MY_SDK=alp50
endif

ifeq ($(MARSHMALLOW_AND_NEWER), yes)
MY_SDK=amm60
endif

ifeq ($(NOUGAT_AND_NEWER), yes)
MY_SDK=anou70
endif

LIB_32=${MY_SDK}_32
$(warning "lib_32 is: ${LIB_32}")

ifeq ($(MY_SDK), "notdef")
$(warning $(TARGET_PRODUCT) config not found! Please check it!)
endif

# 1.libve
include $(CLEAR_VARS)
LOCAL_MODULE := libVE
LOCAL_SRC_FILES := $(LIB_32)/libVE.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 2.libsdecoder
include $(CLEAR_VARS)
LOCAL_MODULE := libsdecoder
LOCAL_SRC_FILES := $(LIB_32)/libsdecoder.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 3. libvencoder
include $(CLEAR_VARS)
LOCAL_MODULE := libvencoder
LOCAL_SRC_FILES := $(LIB_32)/libvencoder.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 4.libvideoengine
include $(CLEAR_VARS)
LOCAL_MODULE := libvideoengine
LOCAL_SRC_FILES := $(LIB_32)/libvideoengine.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 5.libawavs
include $(CLEAR_VARS)
LOCAL_MODULE := libawavs
LOCAL_SRC_FILES := $(LIB_32)/libawavs.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 6.libawh264
include $(CLEAR_VARS)
LOCAL_MODULE := libawh264
LOCAL_SRC_FILES := $(LIB_32)/libawh264.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 7.libawh265
include $(CLEAR_VARS)
LOCAL_MODULE := libawh265
LOCAL_SRC_FILES := $(LIB_32)/libawh265.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 8.libawh265soft
include $(CLEAR_VARS)
LOCAL_MODULE := libawh265soft
LOCAL_SRC_FILES := $(LIB_32)/libawh265soft.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 9.libawmjpeg
include $(CLEAR_VARS)
LOCAL_MODULE := libawmjpeg
LOCAL_SRC_FILES := $(LIB_32)/libawmjpeg.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 10.libawmjpegplus
include $(CLEAR_VARS)
LOCAL_MODULE := libawmjpegplus
LOCAL_SRC_FILES := $(LIB_32)/libawmjpegplus.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 11.libawmpeg2
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg2
LOCAL_SRC_FILES := $(LIB_32)/libawmpeg2.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 12.libawmpeg4base
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg4base
LOCAL_SRC_FILES := $(LIB_32)/libawmpeg4base.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 13.libawmpeg4dx
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg4dx
LOCAL_SRC_FILES := $(LIB_32)/libawmpeg4dx.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 14.libawmpeg4h263
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg4h263
LOCAL_SRC_FILES := $(LIB_32)/libawmpeg4h263.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 15.libawmpeg4normal
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg4normal
LOCAL_SRC_FILES := $(LIB_32)/libawmpeg4normal.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 16.libawmpeg4vp6
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg4vp6
LOCAL_SRC_FILES := $(LIB_32)/libawmpeg4vp6.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 17.libawvp6soft
include $(CLEAR_VARS)
LOCAL_MODULE := libawvp6soft
LOCAL_SRC_FILES := $(LIB_32)/libawvp6soft.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 18.libawvp8
include $(CLEAR_VARS)
LOCAL_MODULE := libawvp8
LOCAL_SRC_FILES := $(LIB_32)/libawvp8.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 19.libawvp9soft
include $(CLEAR_VARS)
LOCAL_MODULE := libawvp9soft
LOCAL_SRC_FILES := $(LIB_32)/libawvp9soft.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 20.libawwmv3
include $(CLEAR_VARS)
LOCAL_MODULE := libawwmv3
LOCAL_SRC_FILES := $(LIB_32)/libawwmv3.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 21.libawwmv12soft
include $(CLEAR_VARS)
LOCAL_MODULE := libawwmv12soft
LOCAL_SRC_FILES := $(LIB_32)/libawwmv12soft.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

ifeq ($(LOLLIPOP_AND_NEWER), yes)

LIB_64=${MY_SDK}_64
$(warning "lib_64 is: ${LIB_64}")

# 1.libve
include $(CLEAR_VARS)
LOCAL_MODULE := libVE
LOCAL_SRC_FILES := $(LIB_64)/libVE.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 2.libsdecoder
include $(CLEAR_VARS)
LOCAL_MODULE := libsdecoder
LOCAL_SRC_FILES := $(LIB_64)/libsdecoder.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 3. libvencoder
include $(CLEAR_VARS)
LOCAL_MODULE := libvencoder
LOCAL_SRC_FILES := $(LIB_64)/libvencoder.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 4.libvideoengine
include $(CLEAR_VARS)
LOCAL_MODULE := libvideoengine
LOCAL_SRC_FILES := $(LIB_64)/libvideoengine.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 5.libawavs
include $(CLEAR_VARS)
LOCAL_MODULE := libawavs
LOCAL_SRC_FILES := $(LIB_64)/libawavs.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 6.libawh264
include $(CLEAR_VARS)
LOCAL_MODULE := libawh264
LOCAL_SRC_FILES := $(LIB_64)/libawh264.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 7.libawh265
include $(CLEAR_VARS)
LOCAL_MODULE := libawh265
LOCAL_SRC_FILES := $(LIB_64)/libawh265.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 8.libawh265soft
include $(CLEAR_VARS)
LOCAL_MODULE := libawh265soft
LOCAL_SRC_FILES := $(LIB_64)/libawh265soft.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 9.libawmjpeg
include $(CLEAR_VARS)
LOCAL_MODULE := libawmjpeg
LOCAL_SRC_FILES := $(LIB_64)/libawmjpeg.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 10.libawmjpegplus
include $(CLEAR_VARS)
LOCAL_MODULE := libawmjpegplus
LOCAL_SRC_FILES := $(LIB_64)/libawmjpegplus.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 11.libawmpeg2
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg2
LOCAL_SRC_FILES := $(LIB_64)/libawmpeg2.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 12.libawmpeg4base
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg4base
LOCAL_SRC_FILES := $(LIB_64)/libawmpeg4base.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 13.libawmpeg4dx
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg4dx
LOCAL_SRC_FILES := $(LIB_64)/libawmpeg4dx.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 14.libawmpeg4h263
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg4h263
LOCAL_SRC_FILES := $(LIB_64)/libawmpeg4h263.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 15.libawmpeg4normal
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg4normal
LOCAL_SRC_FILES := $(LIB_64)/libawmpeg4normal.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 16.libawmpeg4vp6
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg4vp6
LOCAL_SRC_FILES := $(LIB_64)/libawmpeg4vp6.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 17.libawvp6soft
include $(CLEAR_VARS)
LOCAL_MODULE := libawvp6soft
LOCAL_SRC_FILES := $(LIB_64)/libawvp6soft.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 18.libawvp8
include $(CLEAR_VARS)
LOCAL_MODULE := libawvp8
LOCAL_SRC_FILES := $(LIB_64)/libawvp8.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 19.libawvp9soft
include $(CLEAR_VARS)
LOCAL_MODULE := libawvp9soft
LOCAL_SRC_FILES := $(LIB_64)/libawvp9soft.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 20.libawwmv3
include $(CLEAR_VARS)
LOCAL_MODULE := libawwmv3
LOCAL_SRC_FILES := $(LIB_64)/libawwmv3.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 21.libawwmv12soft
include $(CLEAR_VARS)
LOCAL_MODULE := libawwmv12soft
LOCAL_SRC_FILES := $(LIB_64)/libawwmv12soft.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

endif
