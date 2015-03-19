#!/bin/bash
#
# Nautilus script -> jd-gui
#
# Add multiple files jd-gui application
#
# Author:  Ilya Kharmatsky aka jshark
# Version: 0.0.0.1 
# Date:    26.01.2010
#

debug=1

jd_gui_path=/usr/bin/jd-gui

filesall=$NAUTILUS_SCRIPT_SELECTED_FILE_PATHS

if [ $debug -ne 0 ];
then
 echo $jd_gui_path $filesall > /tmp/jd_gui_nau_debug
fi

$jd_gui_path $filesall &
