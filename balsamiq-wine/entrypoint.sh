#!/bin/bash
set -e

chown -R $USERPERMS $HOME
wine "/opt/Balsamiq_Mockups_3/Balsamiq Mockups 3.exe" register $BALSAMIC_LICENSENAME $BALSAMIC_LICENSEKEY
wine "/opt/Balsamiq_Mockups_3/Balsamiq Mockups 3.exe"
