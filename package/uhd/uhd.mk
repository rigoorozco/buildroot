################################################################################
#
# uhd
#
################################################################################

UHD_VERSION = 3.13.0.1
UHD_SITE = https://github.com/EttusResearch/uhd/archive
UHD_SOURCE = v$(UHD_VERSION).tar.gz
UHD_LICENSE = GPL-3.0+
UHD_LICENSE_FILES = COPYING

UHD_SUPPORTS_IN_SOURCE_BUILD = NO

UHD_DEPENDENCIES = \
	boost 

UHD_SUBDIR = host 
UHD_INSTALL_STAGING = YES

UHD_CONF_OPTS = \
	-DENABLE_E300=ON \
	-DENABLE_GPSD=OFF

$(eval $(cmake-package))
