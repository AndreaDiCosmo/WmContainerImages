#!/bin/bash

# local mount point for the images share
export MY_sd="/tmp/images"
export MY_SUIF_TAG="v.0.2.2"
export SUIF_HOME="/tmp/SUIF"
export SUIF_AUDIT_BASE_DIR="/tmp/SUIF_AUDIT"
export MY_MSR_template="MSR/1011/lean"
export MY_fixTag="22-05-26"


# change below only if you know the system well
export MY_d=$(date +%y-%m-%dT%H.%M.%S_%3N)
export MY_crtDay=$(date +%y-%m-%d)
export MY_wd="/tmp/work"        # our work directory
export MY_sd="/tmp/share"       # share directory - images
export MY_binDir="$MY_sd/bin"
export MY_installerSharedBin="$MY_binDir/installer.bin"
export MY_sumBootstrapSharedBin="$MY_binDir/sum-bootstrap.bin"
export AZ_ACR_CANONICAL_CONTAINER_IMAGE_FULL_NAME="${AZ_ACR_URL}/${AZ_ACR_REPO_NAME}-canonical:${MY_fixTag}"

# SUIF references
export SUIF_AUDIT_BASE_DIR=/tmp/SUIF_AUDIT
export SUIF_DEBUG_ON=1
export SUIF_FIXES_DATE_TAG="${MY_fixTag}"
export SUIF_HOME=/tmp/SUIF
export SUIF_INSTALL_IMAGE_FILE="/tmp/products.zip"
export SUIF_INSTALL_INSTALL_DIR="/opt/softwareag"
export SUIF_INSTALL_INSTALLER_BIN="/tmp/installer.bin"
export SUIF_INSTALL_TIME_ADMIN_PASSWORD=manage
export SUIF_ONLINE_MODE=0
export SUIF_PATCH_AVAILABLE=1
export SUIF_PATCH_FIXES_IMAGE_FILE="/tmp/fixes.zip"
export SUIF_PATCH_SUM_BOOSTSTRAP_BIN="/tmp/sum-bootstrap.bin"
export SUIF_SDC_ONLINE_MODE=0 # tell SUIF we are not connected to SDC, but using our own images
export SUIF_SETUP_TEMPLATE_MSR_LICENSE_FILE="${MSRLICENSE_SECUREFILEPATH}"
export SUIF_SUM_HOME=/tmp/sumv11
