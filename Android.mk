# Copyright 2016 ParanoidAndroid Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)
ifeq ($(TARGET_DEVICE),angler)

include $(CLEAR_VARS)
LOCAL_MODULE := libimscamera_jni_64.so
LOCAL_MODULE_CLASS := FAKE
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := huawei
include $(BUILD_SYSTEM)/base_rules.mk
$(LOCAL_BUILT_MODULE): TARGET := /proprietary/vendor/lib64/libimscamera_jni.so
$(LOCAL_BUILT_MODULE): SYMLINK := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/app/ims/lib/arm64/libimscamera_jni.so
$(LOCAL_BUILT_MODULE): $(LOCAL_PATH)/Android.mk
$(LOCAL_BUILT_MODULE):
	$(hide) mkdir -p $(dir $@)
	$(hide) mkdir -p $(dir $(SYMLINK))
	$(hide) rm -rf $@
	$(hide) rm -rf $(SYMLINK)
	$(hide) ln -sf $(TARGET) $(SYMLINK)
	$(hide) touch $@

include $(CLEAR_VARS)
LOCAL_MODULE := libimsmedia_jni_64.so
LOCAL_MODULE_CLASS := FAKE
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := huawei
include $(BUILD_SYSTEM)/base_rules.mk
$(LOCAL_BUILT_MODULE): TARGET := /proprietary/vendor/lib64/libimsmedia_jni.so
$(LOCAL_BUILT_MODULE): SYMLINK := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/app/ims/lib/arm64/libimsmedia_jni.so
$(LOCAL_BUILT_MODULE): $(LOCAL_PATH)/Android.mk
$(LOCAL_BUILT_MODULE):
	$(hide) mkdir -p $(dir $@)
	$(hide) mkdir -p $(dir $(SYMLINK))
	$(hide) rm -rf $@
	$(hide) rm -rf $(SYMLINK)
	$(hide) ln -sf $(TARGET) $(SYMLINK)
	$(hide) touch $@

include $(CLEAR_VARS)
LOCAL_MODULE := HwSarControlService
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_OWNER := huawei
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/app
LOCAL_SRC_FILES := proprietary/system/app/HwSarControlService/HwSarControlService.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := SetupSmartDeviceOverlay
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_OWNER := huawei
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/app
LOCAL_SRC_FILES := proprietary/system/app/SetupSmartDeviceOverlay/SetupSmartDeviceOverlay.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := HwMMITest
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_OWNER := huawei
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/app
LOCAL_SRC_FILES := proprietary/system/app/HwMMITest/HwMMITest.apk
LOCAL_REQUIRED_MODULES :=  libManufacture_64.so
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := libManufacture_64.so
LOCAL_MODULE_CLASS := FAKE
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := huawei
include $(BUILD_SYSTEM)/base_rules.mk
$(LOCAL_BUILT_MODULE): TARGET := /proprietary/system/lib64/libManufacture.so
$(LOCAL_BUILT_MODULE): SYMLINK := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/app/HwMMITest/lib/arm64/libManufacture.so
$(LOCAL_BUILT_MODULE): $(LOCAL_PATH)/Android.mk
$(LOCAL_BUILT_MODULE):
	$(hide) mkdir -p $(dir $@)
	$(hide) mkdir -p $(dir $(SYMLINK))
	$(hide) rm -rf $@
	$(hide) rm -rf $(SYMLINK)
	$(hide) ln -sf $(TARGET) $(SYMLINK)
	$(hide) touch $@

include $(CLEAR_VARS)
LOCAL_MODULE := qcrilhook
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := huawei
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/framework
LOCAL_SRC_FILES := proprietary/system/framework/qcrilhook.jar
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := com.google.widevine.software.drm
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := huawei
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/framework
LOCAL_SRC_FILES := proprietary/system/framework/com.google.widevine.software.drm.jar
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := com.google.android.camera.experimental2015
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := huawei
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/framework
LOCAL_SRC_FILES := proprietary/system/framework/com.google.android.camera.experimental2015.jar
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := HiddenMenu
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_OWNER := huawei
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/priv-app
LOCAL_SRC_FILES := proprietary/system/priv-app/HiddenMenu/HiddenMenu.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := HotwordEnrollment
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_OWNER := huawei
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/priv-app
LOCAL_SRC_FILES := proprietary/system/priv-app/HotwordEnrollment/HotwordEnrollment.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := DMService
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_OWNER := huawei
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/priv-app
LOCAL_SRC_FILES := proprietary/system/priv-app/DMService/DMService.apk
LOCAL_REQUIRED_MODULES :=  libdmengine_32.so libdmjavaplugin_32.so
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := libdmengine_32.so
LOCAL_MODULE_CLASS := FAKE
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := huawei
include $(BUILD_SYSTEM)/base_rules.mk
$(LOCAL_BUILT_MODULE): TARGET := /proprietary/system/lib/libdmengine.so
$(LOCAL_BUILT_MODULE): SYMLINK := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/priv-app/DMService/lib/arm/libdmengine.so
$(LOCAL_BUILT_MODULE): $(LOCAL_PATH)/Android.mk
$(LOCAL_BUILT_MODULE):
	$(hide) mkdir -p $(dir $@)
	$(hide) mkdir -p $(dir $(SYMLINK))
	$(hide) rm -rf $@
	$(hide) rm -rf $(SYMLINK)
	$(hide) ln -sf $(TARGET) $(SYMLINK)
	$(hide) touch $@

include $(CLEAR_VARS)
LOCAL_MODULE := libdmjavaplugin_32.so
LOCAL_MODULE_CLASS := FAKE
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := huawei
include $(BUILD_SYSTEM)/base_rules.mk
$(LOCAL_BUILT_MODULE): TARGET := /proprietary/system/lib/libdmjavaplugin.so
$(LOCAL_BUILT_MODULE): SYMLINK := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/priv-app/DMService/lib/arm/libdmjavaplugin.so
$(LOCAL_BUILT_MODULE): $(LOCAL_PATH)/Android.mk
$(LOCAL_BUILT_MODULE):
	$(hide) mkdir -p $(dir $@)
	$(hide) mkdir -p $(dir $(SYMLINK))
	$(hide) rm -rf $@
	$(hide) rm -rf $(SYMLINK)
	$(hide) ln -sf $(TARGET) $(SYMLINK)
	$(hide) touch $@

include $(CLEAR_VARS)
LOCAL_MODULE := DCMO
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_OWNER := huawei
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/priv-app
LOCAL_SRC_FILES := proprietary/system/priv-app/DCMO/DCMO.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := Entitlement
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_OWNER := huawei
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/priv-app
LOCAL_SRC_FILES := proprietary/system/priv-app/Entitlement/Entitlement.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := DiagMon
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_OWNER := huawei
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/priv-app
LOCAL_SRC_FILES := proprietary/system/priv-app/DiagMon/DiagMon.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := CNEService
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_OWNER := huawei
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/priv-app
LOCAL_SRC_FILES := proprietary/system/priv-app/CNEService/CNEService.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := CallStatistics
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_OWNER := huawei
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/priv-app
LOCAL_SRC_FILES := proprietary/system/priv-app/CallStatistics/CallStatistics.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ConnMO
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_OWNER := huawei
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/priv-app
LOCAL_SRC_FILES := proprietary/system/priv-app/ConnMO/ConnMO.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := qcrilmsgtunnel
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_OWNER := huawei
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/priv-app
LOCAL_SRC_FILES := proprietary/system/priv-app/qcrilmsgtunnel/qcrilmsgtunnel.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := CarrierEntitlement
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_OWNER := huawei
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/priv-app
LOCAL_SRC_FILES := proprietary/system/priv-app/CarrierEntitlement/CarrierEntitlement.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := SprintDM
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_OWNER := huawei
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/priv-app
LOCAL_SRC_FILES := proprietary/system/priv-app/SprintDM/SprintDM.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ConfigUpdater
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_OWNER := huawei
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/priv-app
LOCAL_SRC_FILES := proprietary/system/priv-app/ConfigUpdater/ConfigUpdater.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := lowi.conf
LOCAL_MODULE_CLASS := FAKE
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := huawei
include $(BUILD_SYSTEM)/base_rules.mk
$(LOCAL_BUILT_MODULE): TARGET := /proprietary/vendor/etc/lowi.conf
$(LOCAL_BUILT_MODULE): SYMLINK := $(PRODUCT_OUT)/system/etc/lowi.conf
$(LOCAL_BUILT_MODULE): $(LOCAL_PATH)/Android.mk
$(LOCAL_BUILT_MODULE):
	$(hide) mkdir -p $(dir $@)
	$(hide) mkdir -p $(dir $(SYMLINK))
	$(hide) rm -rf $@
	$(hide) rm -rf $(SYMLINK)
	$(hide) ln -sf $(TARGET) $(SYMLINK)
	$(hide) touch $@

include $(CLEAR_VARS)
LOCAL_MODULE := libqmi_cci
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := huawei
LOCAL_SRC_FILES := proprietary/vendor/lib64/libqmi_cci.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_32 := proprietary/vendor/lib/libqmi_cci.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libqmi_common_so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := huawei
LOCAL_SRC_FILES := proprietary/vendor/lib64/libqmi_common_so.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_32 := proprietary/vendor/lib/libqmi_common_so.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libdsi_netctrl
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := huawei
LOCAL_SRC_FILES := proprietary/vendor/lib64/libdsi_netctrl.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_32 := proprietary/vendor/lib/libdsi_netctrl.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libqmi_csi
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := huawei
LOCAL_SRC_FILES := proprietary/vendor/lib64/libqmi_csi.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_32 := proprietary/vendor/lib/libqmi_csi.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libqmiservices
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := huawei
LOCAL_SRC_FILES := proprietary/vendor/lib64/libqmiservices.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_32 := proprietary/vendor/lib/libqmiservices.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ETC_AOSPLinks
LOCAL_MODULE_OWNER := google
LOCAL_MODULE_TAGS := optional
LOCAL_POST_INSTALL_CMD := \
    mkdir -p $(PRODUCT_OUT)/system/etc; \
    ln -sf /vendor/etc/izat.conf $(PRODUCT_OUT)/system/etc/izat.conf; \
    ln -sf /vendor/etc/lowi.conf $(PRODUCT_OUT)/system/etc/lowi.conf; \
    ln -sf /vendor/etc/flp.conf $(PRODUCT_OUT)/system/etc/flp.conf; \
    ln -sf /vendor/etc/sap.conf $(PRODUCT_OUT)/system/etc/sap.conf; \
    ln -sf /vendor/etc/pp_calib_data_SAMSUNG_S6E3HA3X01_5P7_1440P_CMD_DUAL0.xml $(PRODUCT_OUT)/system/etc/pp_calib_data_SAMSUNG_S6E3HA3X01_5P7_1440P_CMD_DUAL0.xml; \
    mkdir -p $(PRODUCT_OUT)/system/etc/data; \
    ln -sf /vendor/etc/data/dsi_config.xml $(PRODUCT_OUT)/system/etc/data/dsi_config.xml; \
    ln -sf /vendor/etc/data/netmgr_config.xml $(PRODUCT_OUT)/system/etc/data/netmgr_config.xml; \
    mkdir -p $(PRODUCT_OUT)/system/etc/cne; \
    ln -sf /vendor/etc/cne/profile.txt $(PRODUCT_OUT)/system/etc/cne/profile.txt; \
    mkdir -p $(PRODUCT_OUT)/system/bin; \
    ln -sf /vendor/bin/imscmservice $(PRODUCT_OUT)/system/bin/imscmservice; \
    ln -sf /vendor/bin/imsdatadaemon $(PRODUCT_OUT)/system/bin/imsdatadaemon; \
    ln -sf /vendor/bin/imsqmidaemon $(PRODUCT_OUT)/system/bin/imsqmidaemon; \
    ln -sf /vendor/bin/ims_rtp_daemon $(PRODUCT_OUT)/system/bin/ims_rtp_daemon;
include $(BUILD_PHONY_PACKAGE)

endif
