# Check for target product
ifeq (jellybam_pollux_windy,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_pollux

# AOKP device overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/jellybam/overlay/aokp/device/common

# include JELLYBAM common configuration
include vendor/jellybam/config/jellybam_common.mk

# Inherit CM device configuration
$(call inherit-product, device/sony/pollux_windy/cm.mk)

PRODUCT_NAME := jellybam_pollux_windy

# Update local_manifest.xml
GET_PROJECT_RMS := $(shell vendor/jellybam/tools/removeprojects.py $(PRODUCT_NAME))
GET_PROJECT_ADDS := $(shell vendor/jellybam/tools/addprojects.py $(PRODUCT_NAME))

endif
