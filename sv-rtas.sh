#!/bin/bash
# Check the checkpoint directory and log directory, match with simpoint_fs_eembc.py
# Select the test array 
CONFIG=$1
#declare -a arr=("Da2time01" "Daifftr01" "Daifirf01" "Daiifft01" "Dbasefp01" "Dbitmnp01" "Dcacheb01" "Dcanrdr01" "Didctrn01" "Diirflt01" "Dmatrix01" "Dpntrch01" "Dpuwmod01" "Drspeed01" "Dtblook01" "Dttsprk01")
#declare -a arr=("a2time01-3b683" "aifftr01-3b683" "aifirf01-3b683" "aiifft01-3b683" "basefp01-3b683" "bitmnp01-3b683" "cacheb01-3b683" "canrdr01-3b683" "idctrn01-3b683" "iirflt01-3b683" "matrix01-3b683" "pntrch01-3b683" "puwmod01-3b683" "rspeed01-3b683" "tblook01-3b683" "ttsprk01-3b683")
#declare -a arr=("a2time01-3b683-wp" "aifftr01-3b683-wp" "aifirf01-3b683-wp" "aiifft01-3b683-wp" "basefp01-3b683-wp" "bitmnp01-3b683-wp" "cacheb01-3b683-wp" "canrdr01-3b683-wp" "idctrn01-3b683-wp" "iirflt01-3b683-wp" "matrix01-3b683-wp" "pntrch01-3b683-wp" "puwmod01-3b683-wp" "rspeed01-3b683-wp" "tblook01-3b683-wp" "ttsprk01-3b683-wp")
#declare -a arr=("a2time01-3b683-dm" "aifftr01-3b683-dm" "aifirf01-3b683-dm" "aiifft01-3b683-dm" "basefp01-3b683-dm" "bitmnp01-3b683-dm" "cacheb01-3b683-dm" "canrdr01-3b683-dm" "idctrn01-3b683-dm" "iirflt01-3b683-dm" "matrix01-3b683-dm" "pntrch01-3b683-dm" "puwmod01-3b683-dm" "rspeed01-3b683-dm" "tblook01-3b683-dm" "ttsprk01-3b683-dm")

declare -a arr=("Daifftr01" "Daiifft01" "Dcacheb01" "aifftr01-3b683" "aiifft01-3b683" "cacheb01-3b683" "aifftr01-3b683-wp" "aiifft01-3b683-wp" "cacheb01-3b683-wp" "aifftr01-3b683-dm" "aiifft01-3b683-dm" "cacheb01-3b683-dm")
#declare -a arr=("aifftr01-3b683-dm" "aiifft01-3b683-dm" "cacheb01-3b683-dm")

for i in "${arr[@]}"
do
     gnome-terminal -x bash -c "./build/ARM/gem5.opt -d eembc-16kl1-data-dm --stats-file=${i}-${CONFIG}.txt  configs/spec2006/simpoint_fs.py --cfg=configs/spec2006/arm.cfg --disk-image=/home/farshchi/projects/gem5/full_system_images/disks/linux-arm-ael.img --num-cpus=4 --mem-size=512MB --kernel=/home/farshchi/projects/gem5/gem5-linux/vmlinux --machine-type=VExpress_EMM --dtb-file=/home/farshchi/projects/gem5/gem5-linux/arch/arm/boot/dts/vexpress-v2p-ca15-tc1-gem5_4cpus.dtb --mem-type=lpddr2_s4_1066_x32  --simpoint-mode=batch --benchmark=$i --checkpoint-dir=m5out/cpt.193060003553000 && sleep 8d"&
done
           