#!/bin/bash

. ${BUILD_SOURCESDIRECTORY}/scripts/setEnv.sh
. ${SUIF_HOME}/01.scripts/commonFunctions.sh
. ${SUIF_HOME}/01.scripts/installation/setupFunctions.sh

logI "Greating write permission to all for ${SUIF_INSTALL_INSTALL_DIR}"
sudo mkdir -p ${SUIF_INSTALL_INSTALL_DIR}
sudo chmod a+w ${SUIF_INSTALL_INSTALL_DIR}

logI "SUIF env before installation of MSR:"
env | grep SUIF_ | sort

logI "Installing MSR..."

applySetupTemplate "${MY_MSR_template}"

local installResult=$?

if [ "${installResult}" -ne 0 ]; then
  logE "Installation failed, code ${installResult}"
  exit 1
fi

logI "MSR installation successful"
