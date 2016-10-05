#!/bin/bash
# Check the checkpoint directory and log directory, match with simpoint_fs_eembc.py
# Select the test array 
CONFIG=$1
#declare -a arr=("Da2time01" "Daifftr01" "Daifirf01" "Daiifft01" "Dbasefp01" "Dbitmnp01" "Dcacheb01" "Dcanrdr01" "Didctrn01" "Diirflt01" "Dmatrix01" "Dpntrch01" "Dpuwmod01" "Drspeed01" "Dtblook01" "Dttsprk01")
#declare -a arr=("a2time01-3b683" "aifftr01-3b683" "aifirf01-3b683" "aiifft01-3b683" "basefp01-3b683" "bitmnp01-3b683" "cacheb01-3b683" "canrdr01-3b683" "idctrn01-3b683" "iirflt01-3b683" "matrix01-3b683" "pntrch01-3b683" "puwmod01-3b683" "rspeed01-3b683" "tblook01-3b683" "ttsprk01-3b683")
#declare -a arr=("a2time01-3b683-wp" "aifftr01-3b683-wp" "aifirf01-3b683-wp" "aiifft01-3b683-wp" "basefp01-3b683-wp" "bitmnp01-3b683-wp" "cacheb01-3b683-wp" "canrdr01-3b683-wp" "idctrn01-3b683-wp" "iirflt01-3b683-wp" "matrix01-3b683-wp" "pntrch01-3b683-wp" "puwmod01-3b683-wp" "rspeed01-3b683-wp" "tblook01-3b683-wp" "ttsprk01-3b683-wp")
#declare -a arr=("a2time01-3b683-dm" "aifftr01-3b683-dm" "aifirf01-3b683-dm" "aiifft01-3b683-dm" "basefp01-3b683-dm" "bitmnp01-3b683-dm" "cacheb01-3b683-dm" "canrdr01-3b683-dm" "idctrn01-3b683-dm" "iirflt01-3b683-dm" "matrix01-3b683-dm" "pntrch01-3b683-dm" "puwmod01-3b683-dm" "rspeed01-3b683-dm" "tblook01-3b683-dm" "ttsprk01-3b683-dm")

#declare -a arr=("Ddisparity-sim_fast" "Dlocalization-sim_fast" "Dmser-sim_fast" "Dmulti_ncut-sim_fast" "Dsift-sim_fast" "Dstitch-sim_fast" "Dsvm-sim_fast" "Dtexture_synthesis-sim_fast" "Dtracking-sim_fast")
#declare -a arr=("disparity-sim_fast-3b683" "localization-sim_fast-3b683" "mser-sim_fast-3b683" "multi_ncut-sim_fast-3b683" "sift-sim_fast-3b683" "stitch-sim_fast-3b683" "svm-sim_fast-3b683" "texture_synthesis-sim_fast-3b683" "tracking-sim_fast-3b683")
#declare -a arr=("disparity-sim_fast-3b683-wp" "localization-sim_fast-3b683-wp" "mser-sim_fast-3b683-wp" "multi_ncut-sim_fast-3b683-wp" "sift-sim_fast-3b683-wp" "stitch-sim_fast-3b683-wp" "svm-sim_fast-3b683-wp" "texture_synthesis-sim_fast-3b683-wp" "tracking-sim_fast-3b683-wp")
#ydeclare -a arr=("disparity-sim_fast-3b683-dm" "localization-sim_fast-3b683-dm" "mser-sim_fast-3b683-dm" "multi_ncut-sim_fast-3b683-dm" "sift-sim_fast-3b683-dm" "stitch-sim_fast-3b683-dm" "svm-sim_fast-3b683-dm" "texture_synthesis-sim_fast-3b683-dm" "tracking-sim_fast-3b683-dm")

#declare -a arr=("Ddisparity-sqcif" "Dlocalization-sqcif" "Dmser-sqcif" "Dmulti_ncut-sqcif" "Dsift-sqcif" "Dstitch-sqcif" "Dsvm-sqcif" "Dtexture_synthesis-sqcif" "Dtracking-sqcif" "disparity-sqcif-3b683" "localization-sqcif-3b683" "mser-sqcif-3b683" "multi_ncut-sqcif-3b683" "sift-sqcif-3b683" "stitch-sqcif-3b683" "svm-sqcif-3b683" "texture_synthesis-sqcif-3b683" "tracking-sqcif-3b683" "disparity-sqcif-3b683-wp" "localization-sqcif-3b683-wp" "mser-sqcif-3b683-wp" "multi_ncut-sqcif-3b683-wp" "sift-sqcif-3b683-wp" "stitch-sqcif-3b683-wp" "svm-sqcif-3b683-wp" "texture_synthesis-sqcif-3b683-wp" "tracking-sqcif-3b683-wp" "disparity-sqcif-3b683-dm" "localization-sqcif-3b683-dm" "mser-sqcif-3b683-dm" "multi_ncut-sqcif-3b683-dm" "sift-sqcif-3b683-dm" "stitch-sqcif-3b683-dm" "svm-sqcif-3b683-dm" "texture_synthesis-sqcif-3b683-dm" "tracking-sqcif-3b683-dm")

#declare -a arr=("disparity-sqcif-3b683-dm-all" "localization-sqcif-3b683-dm-all" "mser-sqcif-3b683-dm-all" "multi_ncut-sqcif-3b683-dm-all" "sift-sqcif-3b683-dm-all" "stitch-sqcif-3b683-dm-all" "svm-sqcif-3b683-dm-all" "texture_synthesis-sqcif-3b683-dm-all" "tracking-sqcif-3b683-dm-all")

#declare -a arr=("disparity-itr2-sqcif" "disparity-itr2-sqcif-3b683" "disparity-itr2-sqcif-3b683-wp" "disparity-itr2-sqcif-3b683-dm" "disparity-itr2-sqcif-3b683-dm-all")
#declare -a arr=("disparity-itr2-sim_fast" "disparity-itr2-sim_fast-3b683" "disparity-itr2-sim_fast-3b683-wp" "disparity-itr2-sim_fast-3b683-dm" "disparity-itr2-sim_fast-3b683-dm-all")

#declare -a arr=("Ddisparity-sqcif" "disparity-sqcif-3b683" "disparity-sqcif-3b683-wp" "disparity-sqcif-3b683-dm" "disparity-sqcif-3b683-dm-all")


for i in "${arr[@]}"
do
     gnome-terminal -x bash -c "./build/ARM/gem5.opt -d sd-vbs-nu-alg --stats-file=${i}-${CONFIG}.txt  configs/spec2006/simpoint_fs.py --cfg=configs/spec2006/arm.cfg --disk-image=/home/farshchi/projects/gem5/full_system_images/disks/linux-arm-ael.img --num-cpus=4 --mem-size=512MB --kernel=/home/farshchi/projects/gem5/gem5-linux/vmlinux --machine-type=VExpress_EMM --dtb-file=/home/farshchi/projects/gem5/gem5-linux/arch/arm/boot/dts/vexpress-v2p-ca15-tc1-gem5_4cpus.dtb --mem-type=lpddr2_s4_1066_x32  --simpoint-mode=batch --benchmark=$i --checkpoint-dir=m5out/cpt.106100941049500 && sleep 8d"&
done
           
