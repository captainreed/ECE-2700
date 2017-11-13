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
ExecStep $xv_path/bin/xelab -wto da6fde3dd303436383d4ba3cc937d67e -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot simgame_behav xil_defaultlib.simgame xil_defaultlib.glbl -log elaborate.log
