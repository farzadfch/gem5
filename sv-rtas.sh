#!/bin/bash
# Check the checkpoint directory and log directory, match with simpoint_fs_eembc.py
# Select the test array 
CONFIG=$1
declare -a arr=("Da2time01" "Daifftr01" "Daifirf01" "Daiifft01" "Dbasefp01" "Dbitmnp01" "Dcacheb01" "Dcanrdr01" "Didctrn01" "Diirflt01" "Dmatrix01" "Dpntrch01" "Dpuwmod01" "Drspeed01" "Dtblook01" "Dttsprk01")

for i in "${arr[@]}"
do
     gnome-terminal -x bash -c "./build/ARM/gem5.opt -d eembc-dm-solo --stats-file=${i}-${CONFIG}.txt  configs/spec2006/simpoint_fs.py --cfg=configs/spec2006/arm.cfg --disk-image=/home/farshchi/projects/gem5/full_system_images/disks/linux-arm-ael.img --num-cpus=4 --mem-size=512MB --kernel=/home/farshchi/projects/gem5/gem5-linux/vmlinux --machine-type=VExpress_EMM --dtb-file=/home/farshchi/projects/gem5/gem5-linux/arch/arm/boot/dts/vexpress-v2p-ca15-tc1-gem5_4cpus.dtb --mem-type=lpddr2_s4_1066_x32  --simpoint-mode=batch --benchmark=$i --checkpoint-dir=m5out && sleep 8d"&
done
           