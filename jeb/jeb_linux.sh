#!/bin/bash

# Start-up script for JEB2 (Linux)

# Prefer a JDK over a JRE
if [ -z "$JAVA_HOME" ]; then
  JAVA=`which java`
else
  JAVA=$JAVA_HOME/bin/java
fi

# Note: If the Java path generation does not yield a correct result, manually set
# the JAVA variable (defined above) to a correct value
if [ ! -f "$JAVA" ]; then
  echo "JEB requires a Java runtime environment, please install one."
  exit -1
fi

cd `dirname $0`
SCRIPTDIR=`pwd`
cd - >/dev/null

INSTALLER=$SCRIPTDIR/bin/jebi.jar
$JAVA -jar $INSTALLER --di
RETCODE=$?
if [ $RETCODE -lt 0 ]; then
    exit $RETCODE
fi

$JAVA -jar $INSTALLER --up
RETCODE=$?
if [ $RETCODE -lt 0 ]; then
    exit $RETCODE
fi

if [ "$1" == "-c" ]; then
    $JAVA -jar $SCRIPTDIR/bin/cl/jeb.jar $@
    exit 0
fi

chmod +x $SCRIPTDIR/bin/jeb
$SCRIPTDIR/bin/jeb $@
exit 0
