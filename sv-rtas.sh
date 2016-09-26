#!/bin/bash
# Check the checkpoint directory and log directory, match with simpoint_fs_eembc.py
# Select the test array 
CONFIG=$1
#declare -a arr=("aifftr01" "aiifft01" "cacheb01" "rgbhpg01" "rgbyiq01" "disparity" "mser" "svm" "aifftr01-D1bww" "aiifft01-D1bww" "cacheb01-D1bww" "rgbhpg01-D1bww" "rgbyiq01-D1bww" "disparity-D1bww" "mser-D1bww" "svm-D1bww" "aifftr01-D2bww" "aiifft01-D2bww" "cacheb01-D2bww" "rgbhpg01-D2bww" "rgbyiq01-D2bww" "disparity-D2bww" "mser-D2bww" "svm-D2bww" "aifftr01-D3bww" "aiifft01-D3bww" "cacheb01-D3bww" "rgbhpg01-D3bww" "rgbyiq01-D3bww" "disparity-D3bww" "mser-D3bww" "svm-D3bww")
declare -a arr=("rgbhpg01-D1bww" "rgbhpg01-D2bww" "rgbhpg01-D3bww")
#declare -a arr=("cacheb01" "cacheb01-D1bww" "cacheb01-D2bww" "cacheb01-D3bww")
#declare -a arr=("disparity" "mser" "svm")
#declare -a arr=("sift")
#declare -a arr=("aifftr01-D3bww" "aiifft01-D3bww" "cacheb01-D3bww" "rgbhpg01-D3bww" "rgbyiq01-D3bww" "disparity-D3bww" "mser-D3bww" "sift-D3bww")
#declare -a arr=("disparity-D3bww" "mser-D3bww" "svm-D3bww")
#declare -a arr=("disparity" "localization" "mser" "sift" "stitch" "svm" "texture_synthesis" "tracking")
#declare -a arr=("disparity" "mser" "svm")
#declare -a arr=("localization-D3bww")
#declare -a arr=("rgbyiq01-D3bww")
#declare -a arr=("aifftr01" "aiifft01" "cacheb01" "rgbhpg01" "rgbyiq01" "disparity" "mser" "svm")
#declare -a arr=("aifftr01-D3bww" "aiifft01-D3bww" "cacheb01-D3bww" "rgbhpg01-D3bww" "rgbyiq01-D3bww" "disparity-D3bww" "mser-D3bww" "svm-D3bww")
#declare -a arr=("aifftr01-D2bww" "aiifft01-D2bww" "cacheb01-D2bww" "rgbhpg01-D2bww" "rgbyiq01-D2bww" "disparity-D2bww" "mser-D2bww" "svm-D2bww" "aifftr01-D1bww" "aiifft01-D1bww" "cacheb01-D1bww" "rgbhpg01-D1bww" "rgbyiq01-D1bww" "disparity-D1bww" "mser-D1bww" "svm-D1bww")
#periodic
#declare -a arr=("rt4-cr4")
#declare -a arr=("rgbhpg01-D3bww" "rgbyiq01-D3bww")
#declare -a arr=("aifftr01-D3bww" "aiifft01-D3bww" "cacheb01-D3bww" "disparity-D3bww" "mser-D3bww" "svm-D3bww")
#declare -a arr=("disparity-D3bww" "mser-D3bww")
#declare -a arr=( "mser" "mser-D1bww" "mser-D2bww" "mser-D3bww")
#declare -a arr=( "mser-D3bww")
#declare -a arr=("aifftr01P" "aiifft01P" "cacheb01P" "rgbhpg01P")
#declare -a arr=("rgbyiq01" "rgbyiq01-D1bww" "rgbyiq01-D2bww" "rgbyiq01-D3bww")
for i in "${arr[@]}"
do
     gnome-terminal -x bash -c "./build/ARM/gem5.opt -d  rtas-isolcpu --stats-file=${i}-${CONFIG}.txt  configs/spec2006/simpoint_fs.py --cfg=configs/spec2006/arm.cfg --disk-image=/home/farshchi/projects/gem5/full_system_images/disks/linux-arm-ael.img --num-cpus=4 --mem-size=2048MB --kernel=/home/farshchi/projects/gem5/gem5-linux/vmlinux --machine-type=VExpress_EMM --dtb-file=/home/farshchi/projects/gem5/gem5-linux/arch/arm/boot/dts/vexpress-v2p-ca15-tc1-gem5_4cpus.dtb --mem-type=lpddr2_s4_1066_x32  --simpoint-mode=batch --benchmark=$i --checkpoint-dir=m5out-isolcpu && sleep 8d"&
done
           
     #gnome-terminal -x bash -c "./build/ARM/gem5.opt -d eembc-char1 --stats-file=${i}.txt --debug-flags=PK --debug-file=dump${i} configs/spec2006/simpoint_fs_eembc.py --cfg=configs/spec2006/arm.cfg --disk-image=/home/prathap/WorkSpace/gem5/fullsystem/disks/linux-arm-ael.img --num-cpus=4 --mem-size=2048MB --kernel=/home/prathap/WorkSpace/linux-linaro-tracking-gem5/vmlinux --machine-type=VExpress_EMM --dtb-file=/home/prathap/WorkSpace/linux-linaro-tracking-gem5/arch/arm/boot/dts/vexpress-v2p-ca15-tc1-gem5_4cpus.dtb --mem-type=lpddr2_s4_1066_x32  --simpoint-mode=batch --benchmark=$i --checkpoint-dir=m5out-1RT && sleep 8d"
#--debug-flags=PK --debug-file=dump${i}-${CONFIG}
#declare -a arr=("a2time01" "aifftr01" "aifirf01" "aiifft01" "basefp01" "bitmnp01" "cacheb01" "canrdr01" "idctrn01" "iirflt01" "matrix01" "pntrch01" "puwmod01" "rspeed01" "tblook01" "ttsprk01")
