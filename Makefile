TARGET := iphone:clang:latest:14.0
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DevApps

DevApps_FILES = Tweak.x
DevApps_FRAMEWORKS = Security

include $(THEOS_MAKE_PATH)/tweak.mk
