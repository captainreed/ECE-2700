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
ExecStep $xv_path/bin/xsim latchTest_behav -key {Behavioral:sim_1:Functional:latchTest} -tclbatch latchTest.tcl -log simulate.log
