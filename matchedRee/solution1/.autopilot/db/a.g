#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/alex/Documents/RFNoCFrameSynchHWAccel/matchedRee/solution1/.autopilot/db/a.g.bc ${1+"$@"}
