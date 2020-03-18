$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_DEVICE := v220A
PRODUCT_NAME := omni_V220A
PRODUCT_BRAND := Vsmart
PRODUCT_MODEL := V220A
PRODUCT_MANUFACTURER := Vsmart

# ADB Fix
PRODUCT_PROPERTY_OVERRIDES += \
    sys.usb.ffs.aio_compat=true

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31
