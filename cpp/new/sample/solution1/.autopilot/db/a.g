#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/rijain/Workspace/Watershed/cpp/new/sample/solution1/.autopilot/db/a.g.bc ${1+"$@"}
