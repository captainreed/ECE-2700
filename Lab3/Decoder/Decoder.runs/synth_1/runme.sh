#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/opt/software/xilinx/SDK/2015.4/bin:/opt/software/xilinx/Vivado/2015.4/ids_lite/ISE/bin/lin64:/opt/software/xilinx/Vivado/2015.4/bin
else
  PATH=/opt/software/xilinx/SDK/2015.4/bin:/opt/software/xilinx/Vivado/2015.4/ids_lite/ISE/bin/lin64:/opt/software/xilinx/Vivado/2015.4/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/opt/software/xilinx/Vivado/2015.4/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/opt/software/xilinx/Vivado/2015.4/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/A01577421/Desktop/ECE2700/Lab3/Decoder/Decoder.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log decoder3_8.vds -m64 -mode batch -messageDb vivado.pb -notrace -source decoder3_8.tcl
