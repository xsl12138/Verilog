@echo off
set xv_path=D:\\xilinx_vivado\\Vivado\\2015.2\\bin
call %xv_path%/xsim auto_add_tb_behav -key {Behavioral:sim_1:Functional:auto_add_tb} -tclbatch auto_add_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
