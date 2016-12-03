#!/bin/bash

if [[ $EUID -ne 0 ]]; then
  echo "You must run this with superuser priviliges.  Try \"sudo ./install.sh\"" 2>&1
  exit 1
else
  echo "About to run dkms install steps..."
fi

echo "Running make uninstall..."
make uninstall

echo "Running make..."
make

echo "Running make install..."
make install

DRV_NAME=rtl8814AU
DRV_VERSION=4.3.21
mkdir /usr/src/${DRV_NAME}-${DRV_VERSION}
git archive driver-${DRV_VERSION} | tar -x -C /usr/src/${DRV_NAME}-${DRV_VERSION}
dkms add -m ${DRV_NAME} -v ${DRV_VERSION}
dkms build -m ${DRV_NAME} -v ${DRV_VERSION}
RESULT=$(dkms install -m ${DRV_NAME} -v ${DRV_VERSION})

echo "Finished running dkms install steps."

exit $RESULT

