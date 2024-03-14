@echo off
set xv_path=D:\\xilinx_vivado\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto 8e8c348189ff40f59d8f84fdb1a96c46 -m64 --debug typical --relax --mt 2 --maxdelay -L xil_defaultlib -L simprims_ver -L secureip --snapshot lab1_tb_time_impl -transport_int_delays -pulse_r 0 -pulse_int_r 0 xil_defaultlib.lab1_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
