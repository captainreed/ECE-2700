<<<<<<< HEAD
@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xsim gamestatetest_behav -key {Behavioral:sim_1:Functional:gamestatetest} -tclbatch gamestatetest.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
=======
@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xsim gamestatetest_behav -key {Behavioral:sim_1:Functional:gamestatetest} -tclbatch gamestatetest.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
>>>>>>> 76c970f25758e2bb1b41a5ac5205bcf7e290a559
