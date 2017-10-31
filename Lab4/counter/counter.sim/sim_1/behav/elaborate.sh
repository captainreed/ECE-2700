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
ExecStep $xv_path/bin/xelab -wto aee18d4de3d94b6092e002e78e4b77a6 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot testcount_behav xil_defaultlib.testcount xil_defaultlib.glbl -log elaborate.log
