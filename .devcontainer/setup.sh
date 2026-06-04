#!/bin/bash

#
# Install GAMS license
#
if [ -n "$GAMS_LICENSE" ]; then
  mkdir -p /opt/var/gams
  echo "$GAMS_LICENSE" > /opt/gams/gamslice.txt
fi
