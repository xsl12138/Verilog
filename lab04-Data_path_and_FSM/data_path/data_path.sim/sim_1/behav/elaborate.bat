@echo off
set xv_path=D:\\xilinx_vivado\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto 692a5dca43384575b3c961bb7271626c -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot datapath_behav xil_defaultlib.datapath xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
