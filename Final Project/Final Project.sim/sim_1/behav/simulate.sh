#!/bin/bash -f
xv_path="/opt/software/xilinx/Vivado/2015.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim simgame_behav -key {Behavioral:sim_1:Functional:simgame} -tclbatch simgame.tcl -log simulate.log
