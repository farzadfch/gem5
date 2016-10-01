#!/bin/bash

CONFIG=$1
#declare -a arr=("Da2time01" "Daifftr01" "Daifirf01" "Daiifft01" "Dbasefp01" "Dbitmnp01" "Dcacheb01" "Dcanrdr01" "Didctrn01" "Diirflt01" "Dmatrix01" "Dpntrch01" "Dpuwmod01" "Drspeed01" "Dtblook01" "Dttsprk01")
#declare -a arr=("a2time01-3b683" "aifftr01-3b683" "aifirf01-3b683" "aiifft01-3b683" "basefp01-3b683" "bitmnp01-3b683" "cacheb01-3b683" "canrdr01-3b683" "idctrn01-3b683" "iirflt01-3b683" "matrix01-3b683" "pntrch01-3b683" "puwmod01-3b683" "rspeed01-3b683" "tblook01-3b683" "ttsprk01-3b683")
#declare -a arr=("a2time01-3b683-wp" "aifftr01-3b683-wp" "aifirf01-3b683-wp" "aiifft01-3b683-wp" "basefp01-3b683-wp" "bitmnp01-3b683-wp" "cacheb01-3b683-wp" "canrdr01-3b683-wp" "idctrn01-3b683-wp" "iirflt01-3b683-wp" "matrix01-3b683-wp" "pntrch01-3b683-wp" "puwmod01-3b683-wp" "rspeed01-3b683-wp" "tblook01-3b683-wp" "ttsprk01-3b683-wp")
declare -a arr=("a2time01-3b683-dm" "aifftr01-3b683-dm" "aifirf01-3b683-dm" "aiifft01-3b683-dm" "basefp01-3b683-dm" "bitmnp01-3b683-dm" "cacheb01-3b683-dm" "canrdr01-3b683-dm" "idctrn01-3b683-dm" "iirflt01-3b683-dm" "matrix01-3b683-dm" "pntrch01-3b683-dm" "puwmod01-3b683-dm" "rspeed01-3b683-dm" "tblook01-3b683-dm" "ttsprk01-3b683-dm")
#declare -a arr=("Daifftr01" "Daiifft01" "Dcacheb01" "aifftr01-3b683" "aiifft01-3b683" "cacheb01-3b683" "aifftr01-3b683-wp" "aiifft01-3b683-wp" "cacheb01-3b683-wp" "aifftr01-3b683-dm" "aiifft01-3b683-dm" "cacheb01-3b683-dm")

for i in "${arr[@]}"
do
  file_name=${i}-${CONFIG}".txt"
  #echo ${file_name}
  #grep "system.cpu0.icache.overall_misses::total" ${file_name}
  #grep "system.cpu0.dcache.overall_misses::total" ${file_name}
  #grep "system.switch_cpu0.commit.committedInsts" ${file_name}
  #grep "sim_seconds" ${file_name}
  #grep "system.l2.overall_misses::switch_cpu0.inst" ${file_name}
  #grep "system.l2.overall_misses::switch_cpu0.data" ${file_name}
  grep "system.l2.tags.avg_determ_blks::total" ${file_name}
  #grep "system.switch_cpu1.ipc " ${file_name}
  #grep "system.switch_cpu2.ipc " ${file_name}
  #grep "system.switch_cpu3.ipc " ${file_name}
done