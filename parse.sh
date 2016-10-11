#!/bin/bash

CONFIG=$1
#declare -a arr=("Da2time01" "Daifftr01" "Daifirf01" "Daiifft01" "Dbasefp01" "Dbitmnp01" "Dcacheb01" "Dcanrdr01" "Didctrn01" "Diirflt01" "Dmatrix01" "Dpntrch01" "Dpuwmod01" "Drspeed01" "Dtblook01" "Dttsprk01")
#declare -a arr=("a2time01-3b683" "aifftr01-3b683" "aifirf01-3b683" "aiifft01-3b683" "basefp01-3b683" "bitmnp01-3b683" "cacheb01-3b683" "canrdr01-3b683" "idctrn01-3b683" "iirflt01-3b683" "matrix01-3b683" "pntrch01-3b683" "puwmod01-3b683" "rspeed01-3b683" "tblook01-3b683" "ttsprk01-3b683")
#declare -a arr=("a2time01-3b683-wp" "aifftr01-3b683-wp" "aifirf01-3b683-wp" "aiifft01-3b683-wp" "basefp01-3b683-wp" "bitmnp01-3b683-wp" "cacheb01-3b683-wp" "canrdr01-3b683-wp" "idctrn01-3b683-wp" "iirflt01-3b683-wp" "matrix01-3b683-wp" "pntrch01-3b683-wp" "puwmod01-3b683-wp" "rspeed01-3b683-wp" "tblook01-3b683-wp" "ttsprk01-3b683-wp")
#declare -a arr=("a2time01-3b683-dm" "aifftr01-3b683-dm" "aifirf01-3b683-dm" "aiifft01-3b683-dm" "basefp01-3b683-dm" "bitmnp01-3b683-dm" "cacheb01-3b683-dm" "canrdr01-3b683-dm" "idctrn01-3b683-dm" "iirflt01-3b683-dm" "matrix01-3b683-dm" "pntrch01-3b683-dm" "puwmod01-3b683-dm" "rspeed01-3b683-dm" "tblook01-3b683-dm" "ttsprk01-3b683-dm")
#declare -a arr=("Daifftr01" "Daiifft01" "Dcacheb01" "aifftr01-3b683" "aiifft01-3b683" "cacheb01-3b683" "aifftr01-3b683-wp" "aiifft01-3b683-wp" "cacheb01-3b683-wp" "aifftr01-3b683-dm" "aiifft01-3b683-dm" "cacheb01-3b683-dm")

#declare -a arr=("Ddisparity-sim_fast" "Dlocalization-sim_fast" "Dmser-sim_fast" "Dmulti_ncut-sim_fast" "Dsift-sim_fast" "Dstitch-sim_fast" "Dsvm-sim_fast" "Dtexture_synthesis-sim_fast" "Dtracking-sim_fast")
#declare -a arr=("disparity-sim_fast-3b683" "localization-sim_fast-3b683" "mser-sim_fast-3b683" "multi_ncut-sim_fast-3b683" "sift-sim_fast-3b683" "stitch-sim_fast-3b683" "svm-sim_fast-3b683" "texture_synthesis-sim_fast-3b683" "tracking-sim_fast-3b683")
#declare -a arr=("disparity-sim_fast-3b683-wp" "localization-sim_fast-3b683-wp" "mser-sim_fast-3b683-wp" "multi_ncut-sim_fast-3b683-wp" "sift-sim_fast-3b683-wp" "stitch-sim_fast-3b683-wp" "svm-sim_fast-3b683-wp" "texture_synthesis-sim_fast-3b683-wp" "tracking-sim_fast-3b683-wp")
#declare -a arr=("disparity-sim_fast-3b683-dm" "localization-sim_fast-3b683-dm" "mser-sim_fast-3b683-dm" "multi_ncut-sim_fast-3b683-dm" "sift-sim_fast-3b683-dm" "stitch-sim_fast-3b683-dm" "svm-sim_fast-3b683-dm" "texture_synthesis-sim_fast-3b683-dm" "tracking-sim_fast-3b683-dm")
#declare -a arr=("disparity-sim_fast-3b683-dm-all" "localization-sim_fast-3b683-dm-all" "mser-sim_fast-3b683-dm-all" "multi_ncut-sim_fast-3b683-dm-all" "sift-sim_fast-3b683-dm-all" "stitch-sim_fast-3b683-dm-all" "svm-sim_fast-3b683-dm-all" "texture_synthesis-sim_fast-3b683-dm-all" "tracking-sim_fast-3b683-dm-all")

#declare -a arr=("Ddisparity-sim" "Dlocalization-sim" "Dmser-sim" "Dmulti_ncut-sim" "Dsift-sim" "Dstitch-sim" "Dsvm-sim" "Dtexture_synthesis-sim" "Dtracking-sim")
#declare -a arr=("disparity-sim-3b683" "localization-sim-3b683" "mser-sim-3b683" "multi_ncut-sim-3b683" "sift-sim-3b683" "stitch-sim-3b683" "svm-sim-3b683" "texture_synthesis-sim-3b683" "tracking-sim-3b683")
#declare -a arr=("disparity-sim-3b683-wp" "localization-sim-3b683-wp" "mser-sim-3b683-wp" "multi_ncut-sim-3b683-wp" "sift-sim-3b683-wp" "stitch-sim-3b683-wp" "svm-sim-3b683-wp" "texture_synthesis-sim-3b683-wp" "tracking-sim-3b683-wp")
#declare -a arr=("disparity-sim-3b683-dm" "localization-sim-3b683-dm" "mser-sim-3b683-dm" "multi_ncut-sim-3b683-dm" "sift-sim-3b683-dm" "stitch-sim-3b683-dm" "svm-sim-3b683-dm" "texture_synthesis-sim-3b683-dm" "tracking-sim-3b683-dm")
#declare -a arr=("disparity-sim-3b683-dm-all" "localization-sim-3b683-dm-all" "mser-sim-3b683-dm-all" "multi_ncut-sim-3b683-dm-all" "sift-sim-3b683-dm-all" "stitch-sim-3b683-dm-all" "svm-sim-3b683-dm-all" "texture_synthesis-sim-3b683-dm-all" "tracking-sim-3b683-dm-all")

#declare -a arr=("Ddisparity-itr2-sim" "Dlocalization-itr2-sim" "Dmser-itr2-sim" "Dsift-itr2-sim" "Dstitch-itr2-sim" "Dsvm-itr2-sim" "Dtexture_synthesis-itr2-sim")
#declare -a arr=("disparity-itr2-sim-3b683" "localization-itr2-sim-3b683" "mser-itr2-sim-3b683" "sift-itr2-sim-3b683" "stitch-itr2-sim-3b683" "svm-itr2-sim-3b683" "texture_synthesis-itr2-sim-3b683")
#declare -a arr=("disparity-itr2-sim-3b683-wp" "localization-itr2-sim-3b683-wp" "mser-itr2-sim-3b683-wp" "sift-itr2-sim-3b683-wp" "stitch-itr2-sim-3b683-wp" "svm-itr2-sim-3b683-wp" "texture_synthesis-itr2-sim-3b683-wp")
declare -a arr=("disparity-itr2-sim-3b683-dm" "localization-itr2-sim-3b683-dm" "mser-itr2-sim-3b683-dm" "sift-itr2-sim-3b683-dm" "stitch-itr2-sim-3b683-dm" "svm-itr2-sim-3b683-dm" "texture_synthesis-itr2-sim-3b683-dm")
#declare -a arr=("disparity-itr2-sim-3b683-dm-all" "localization-itr2-sim-3b683-dm-all" "mser-itr2-sim-3b683-dm-all" "sift-itr2-sim-3b683-dm-all" "stitch-itr2-sim-3b683-dm-all" "svm-itr2-sim-3b683-dm-all" "texture_synthesis-itr2-sim-3b683-dm-all")

#declare -a arr=("Ddisparity-sqcif" "Dlocalization-sqcif" "Dmser-sqcif" "Dmulti_ncut-sqcif" "Dsift-sqcif" "Dstitch-sqcif" "Dsvm-sqcif" "Dtexture_synthesis-sqcif" "Dtracking-sqcif")
#declare -a arr=("disparity-sqcif-3b683" "localization-sqcif-3b683" "mser-sqcif-3b683" "multi_ncut-sqcif-3b683" "sift-sqcif-3b683" "stitch-sqcif-3b683" "svm-sqcif-3b683" "texture_synthesis-sqcif-3b683" "tracking-sqcif-3b683")
#declare -a arr=("disparity-sqcif-3b683-wp" "localization-sqcif-3b683-wp" "mser-sqcif-3b683-wp" "multi_ncut-sqcif-3b683-wp" "sift-sqcif-3b683-wp" "stitch-sqcif-3b683-wp" "svm-sqcif-3b683-wp" "texture_synthesis-sqcif-3b683-wp" "tracking-sqcif-3b683-wp")
#declare -a arr=("disparity-sqcif-3b683-dm" "localization-sqcif-3b683-dm" "mser-sqcif-3b683-dm" "multi_ncut-sqcif-3b683-dm" "sift-sqcif-3b683-dm" "stitch-sqcif-3b683-dm" "svm-sqcif-3b683-dm" "texture_synthesis-sqcif-3b683-dm" "tracking-sqcif-3b683-dm")
#declare -a arr=("disparity-sqcif-3b683-dm-all" "localization-sqcif-3b683-dm-all" "mser-sqcif-3b683-dm-all" "multi_ncut-sqcif-3b683-dm-all" "sift-sqcif-3b683-dm-all" "stitch-sqcif-3b683-dm-all" "svm-sqcif-3b683-dm-all" "texture_synthesis-sqcif-3b683-dm-all" "tracking-sqcif-3b683-dm-all")

#declare -a arr=("disparity-sqcif-3b683-dm-all" "localization-sqcif-3b683-dm-all" "mser-sqcif-3b683-dm-all" "multi_ncut-sqcif-3b683-dm-all" "sift-sqcif-3b683-dm-all" "stitch-sqcif-3b683-dm-all" "svm-sqcif-3b683-dm-all" "texture_synthesis-sqcif-3b683-dm-all" "tracking-sqcif-3b683-dm-all")
#declare -a arr=("disparity-itr2-sqcif" "disparity-itr2-sqcif-3b683" "disparity-itr2-sqcif-3b683-wp" "disparity-itr2-sqcif-3b683-dm" "disparity-itr2-sqcif-3b683-dm-all")
#declare -a arr=("disparity-itr2-sim_fast" "disparity-itr2-sim_fast-3b683" "disparity-itr2-sim_fast-3b683-wp" "disparity-itr2-sim_fast-3b683-dm" "disparity-itr2-sim_fast-3b683-dm-all")
#declare -a arr=("Ddisparity-sqcif" "disparity-sqcif-3b683" "disparity-sqcif-3b683-wp" "disparity-sqcif-3b683-dm" "disparity-sqcif-3b683-dm-all")
#declare -a arr=("Ddisparity-sim" "disparity-sim-3b683" "disparity-sim-3b683-wp" "disparity-sim-3b683-dm" "disparity-sim-3b683-dm-all")

#for i in "${arr[@]}"
#do
#  file_name=${i}-${CONFIG}".txt"
#  #echo -n ${file_name}","
#  grep "sim_seconds" ${file_name} | sed -n 2p | awk '{ printf $2 }'
#  echo -n ",,"
#  #grep "system.switch_cpu0.commit.committedInsts" ${file_name} | sed -n 2p | awk '{ printf $2 }'
#  #echo -n ","
#  #grep "system.cpu0.icache.overall_misses::total" ${file_name} | sed -n 2p | awk '{ printf $2 }' 
#  #echo -n ","
#  #grep "system.cpu0.dcache.overall_misses::total" ${file_name} | sed -n 2p | awk '{ printf $2 }' 
#  #echo -n ",,,"
#  grep "system.l2.overall_misses::switch_cpu0.inst" ${file_name} | sed -n 2p | awk '{ printf $2 }'
#  echo -n ","
#  #grep "system.l2.overall_miss_latency::switch_cpu0.inst" ${file_name} | sed -n 2p | awk '{ printf $2 }'
#  grep "system.l2.overall_misses::switch_cpu0.data" ${file_name} | sed -n 2p | awk '{ printf $2 }'
#  echo -n ","
#  grep "system.l2.overall_miss_latency::switch_cpu0.data" ${file_name} | sed -n 2p | awk '{ printf $2 }'
#  echo -n ","
#  grep "system.l2.tags.determ_blks::total" ${file_name} | sed -n 1p | awk '{ printf $2 }'
#  echo -n ","
#  grep "system.l2.tags.determ_blks::total" ${file_name} | sed -n 2p | awk '{ printf $2 }'
#  #echo -n $(expr $dm1 + $dm2)
#  echo -n ","
#  ipc1=$(grep "system.switch_cpu1.ipc " ${file_name} | sed -n 2p | awk '{ printf $2 }')
#  #echo -n ","
#  ipc2=$(grep "system.switch_cpu2.ipc " ${file_name} | sed -n 2p | awk '{ printf $2 }')
#  #echo -n ","
#  ipc3=$(grep "system.switch_cpu3.ipc " ${file_name} | sed -n 2p | awk '{ printf $2 }')
#  ipc=$(echo $ipc1 + $ipc2 + $ipc3 | bc)
#  echo -n $ipc
#  echo ""
#  
#done

for i in "${arr[@]}"
do
  file_name=${i}-${CONFIG}".txt"
  grep "system.l2.overall_miss_rate::switch_cpu0.data" ${file_name} | sed -n 2p | awk '{ printf $2 }'
  echo ""
done

