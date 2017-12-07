#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /media/toni/Data/digilent_contest/open_hardware_AHRS_coprocessor/MadgwickAHRS/MadgwickAHRS/solution1/.autopilot/db/a.g.bc ${1+"$@"}
