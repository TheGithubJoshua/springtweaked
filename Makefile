TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard
THEOS_DEVICE_IP = 192.168.50.31

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Springtweaked

Springtweaked_FILES = Tweak.x
Springtweaked_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
