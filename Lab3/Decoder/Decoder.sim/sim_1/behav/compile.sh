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
echo "xvlog -m64 --relax -prj decoder_test_vlog.prj"
ExecStep $xv_path/bin/xvlog -m64 --relax -prj decoder_test_vlog.prj 2>&1 | tee compile.log
