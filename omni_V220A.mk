# Release name
PRODUCT_RELEASE_NAME := YU5014

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := Vsmart
PRODUCT_DEVICE := V220A
PRODUCT_MANUFACTURER := Vsmart
PRODUCT_MODEL := V220A
PRODUCT_NAME := omni_V220A
