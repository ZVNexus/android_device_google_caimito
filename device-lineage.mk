#
# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# ANGLE
PRODUCT_PACKAGES += \
    ANGLE

# Audio
PRODUCT_VENDOR_PROPERTIES += \
    persist.vendor.aoc.firmware.disable_monitor_mode=true \
    ro.vendor.dolby.dax.version=DAX3_G_3.7.3.0_r1

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.camera.extensions.package=com.google.android.apps.camera.services \
    ro.vendor.camera.extensions.service=com.google.android.apps.camera.services.extensions.service.PixelExtensions

PRODUCT_SYSTEM_PROPERTIES += \
    ro.camerax.extensions.enabled=true

# Carrier
PRODUCT_PRODUCT_PROPERTIES += \
    ro.carriersetup.vzw_consent_page=true

# Charging
include device/google/gs-common/wireless_charger/wireless_charger.mk

PRODUCT_PRODUCT_PROPERTIES += \
    charging_string.apply_v2=true

# DRM
PRODUCT_VENDOR_PROPERTIES += \
    drm.service.enabled=true \
    media.mediadrmservice.enable=true

# EUICC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.mep.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.mep.xml \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml

# GNSS
PRODUCT_PACKAGES += \
    android.hardware.location.gps.prebuilt.xml

PRODUCT_VENDOR_PROPERTIES += \
    persist.vendor.gps.hal.service.name=vendor

# Graphics
PRODUCT_VENDOR_PROPERTIES += \
    ro.surface_flinger.game_default_frame_rate_override=60

# Hotword
PRODUCT_SYSTEM_PROPERTIES += \
    ro.hotword.detection_service_required=true

# Keyboard
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.ime.system_lm_dir=/product/usr/share/ime/google/d3_lms \
    ro.com.google.ime.theme_id=5

# Lineage Health
include hardware/google/pixel/lineage_health/device.mk

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/caimito/overlay-lineage/vendor
PRODUCT_PACKAGE_OVERLAYS += device/google/caimito/overlay-lineage/product

# PowerShare
include hardware/google/pixel/powershare/device.mk

# Quick Start
PRODUCT_PRODUCT_PROPERTIES += \
    ro.quick_start.oem_id=00e0

# Radio
PRODUCT_VENDOR_PROPERTIES += \
    keyguard.no_require_sim=true \
    persist.vendor.ril.ecc.use.xml=1 \
    persist.vendor.ril.radioexternal_hal_type=hidl \
    persist.vendor.ril.support_nr_ds=1 \
    persist.vendor.ril.use_radio_hal=2.1 \
    ro.vendor.config.build_carrier=europen \
    vendor.rild.libpath=libsitril.so

# Sensors
PRODUCT_PACKAGES += \
    sensors.dynamic_sensor_hal

# Touch
include hardware/google/pixel/touch/device.mk

# USB
PRODUCT_VENDOR_PROPERTIES += \
    ro.usb.uvc.enabled=true

# WFC
PRODUCT_PRODUCT_PROPERTIES += \
    ro.gwfcactivation.disabled_carriers=1492
