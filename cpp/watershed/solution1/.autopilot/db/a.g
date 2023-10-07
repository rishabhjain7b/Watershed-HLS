#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/rijain/Workspace/Watershed/cpp/watershed/solution1/.autopilot/db/a.g.bc ${1+"$@"}
