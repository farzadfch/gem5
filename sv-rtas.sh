#!/bin/bash
# Check the checkpoint directory and log directory, match with simpoint_fs_eembc.py
# Select the test array 
CONFIG=$1
#declare -a arr=("Da2time01" "Daifftr01" "Daifirf01" "Daiifft01" "Dbasefp01" "Dbitmnp01" "Dcacheb01" "Dcanrdr01" "Didctrn01" "Diirflt01" "Dmatrix01" "Dpntrch01" "Dpuwmod01" "Drspeed01" "Dtblook01" "Dttsprk01")
#declare -a arr=("a2time01-3b683" "aifftr01-3b683" "aifirf01-3b683" "aiifft01-3b683" "basefp01-3b683" "bitmnp01-3b683" "cacheb01-3b683" "canrdr01-3b683" "idctrn01-3b683" "iirflt01-3b683" "matrix01-3b683" "pntrch01-3b683" "puwmod01-3b683" "rspeed01-3b683" "tblook01-3b683" "ttsprk01-3b683")
#declare -a arr=("a2time01-3b683-wp" "aifftr01-3b683-wp" "aifirf01-3b683-wp" "aiifft01-3b683-wp" "basefp01-3b683-wp" "bitmnp01-3b683-wp" "cacheb01-3b683-wp" "canrdr01-3b683-wp" "idctrn01-3b683-wp" "iirflt01-3b683-wp" "matrix01-3b683-wp" "pntrch01-3b683-wp" "puwmod01-3b683-wp" "rspeed01-3b683-wp" "tblook01-3b683-wp" "ttsprk01-3b683-wp")
#declare -a arr=("a2time01-3b683-dm" "aifftr01-3b683-dm" "aifirf01-3b683-dm" "aiifft01-3b683-dm" "basefp01-3b683-dm" "bitmnp01-3b683-dm" "cacheb01-3b683-dm" "canrdr01-3b683-dm" "idctrn01-3b683-dm" "iirflt01-3b683-dm" "matrix01-3b683-dm" "pntrch01-3b683-dm" "puwmod01-3b683-dm" "rspeed01-3b683-dm" "tblook01-3b683-dm" "ttsprk01-3b683-dm")
#declare -a arr=("a2time01-3b683-dm-all" "aifftr01-3b683-dm-all" "aifirf01-3b683-dm-all" "aiifft01-3b683-dm-all" "basefp01-3b683-dm-all" "bitmnp01-3b683-dm-all" "cacheb01-3b683-dm-all" "canrdr01-3b683-dm-all" "idctrn01-3b683-dm-all" "iirflt01-3b683-dm-all" "matrix01-3b683-dm-all" "pntrch01-3b683-dm-all" "puwmod01-3b683-dm-all" "rspeed01-3b683-dm-all" "tblook01-3b683-dm-all" "ttsprk01-3b683-dm-all")

#declare -a arr=("Ddisparity-sim_fast" "Dlocalization-sim_fast" "Dmser-sim_fast" "Dmulti_ncut-sim_fast" "Dsift-sim_fast" "Dstitch-sim_fast" "Dsvm-sim_fast" "Dtexture_synthesis-sim_fast" "Dtracking-sim_fast" "disparity-sim_fast-3b683" "localization-sim_fast-3b683" "mser-sim_fast-3b683" "multi_ncut-sim_fast-3b683" "sift-sim_fast-3b683" "stitch-sim_fast-3b683" "svm-sim_fast-3b683" "texture_synthesis-sim_fast-3b683" "tracking-sim_fast-3b683" "disparity-sim_fast-3b683-wp" "localization-sim_fast-3b683-wp" "mser-sim_fast-3b683-wp" "multi_ncut-sim_fast-3b683-wp" "sift-sim_fast-3b683-wp" "stitch-sim_fast-3b683-wp" "svm-sim_fast-3b683-wp" "texture_synthesis-sim_fast-3b683-wp" "tracking-sim_fast-3b683-wp" "disparity-sim_fast-3b683-dm" "localization-sim_fast-3b683-dm" "mser-sim_fast-3b683-dm" "multi_ncut-sim_fast-3b683-dm" "sift-sim_fast-3b683-dm" "stitch-sim_fast-3b683-dm" "svm-sim_fast-3b683-dm" "texture_synthesis-sim_fast-3b683-dm" "tracking-sim_fast-3b683-dm" "disparity-sim_fast-3b683-dm-all" "localization-sim_fast-3b683-dm-all" "mser-sim_fast-3b683-dm-all" "multi_ncut-sim_fast-3b683-dm-all" "sift-sim_fast-3b683-dm-all" "stitch-sim_fast-3b683-dm-all" "svm-sim_fast-3b683-dm-all" "texture_synthesis-sim_fast-3b683-dm-all" "tracking-sim_fast-3b683-dm-all")

#declare -a arr=("Ddisparity-sim" "Dlocalization-sim" "Dmser-sim" "Dmulti_ncut-sim" "Dsift-sim" "Dstitch-sim" "Dsvm-sim" "Dtexture_synthesis-sim" "Dtracking-sim" "disparity-sim-3b683" "localization-sim-3b683" "mser-sim-3b683" "multi_ncut-sim-3b683" "sift-sim-3b683" "stitch-sim-3b683" "svm-sim-3b683" "texture_synthesis-sim-3b683" "tracking-sim-3b683" "disparity-sim-3b683-wp" "localization-sim-3b683-wp" "mser-sim-3b683-wp" "multi_ncut-sim-3b683-wp" "sift-sim-3b683-wp" "stitch-sim-3b683-wp" "svm-sim-3b683-wp" "texture_synthesis-sim-3b683-wp" "tracking-sim-3b683-wp" "disparity-sim-3b683-dm" "localization-sim-3b683-dm" "mser-sim-3b683-dm" "multi_ncut-sim-3b683-dm" "sift-sim-3b683-dm" "stitch-sim-3b683-dm" "svm-sim-3b683-dm" "texture_synthesis-sim-3b683-dm" "tracking-sim-3b683-dm" "disparity-sim-3b683-dm-all" "localization-sim-3b683-dm-all" "mser-sim-3b683-dm-all" "multi_ncut-sim-3b683-dm-all" "sift-sim-3b683-dm-all" "stitch-sim-3b683-dm-all" "svm-sim-3b683-dm-all" "texture_synthesis-sim-3b683-dm-all" "tracking-sim-3b683-dm-all")

#declare -a arr=("Ddisparity-itr2-sim" "Dlocalization-itr2-sim" "Dmser-itr2-sim" "Dsift-itr2-sim" "Dstitch-itr2-sim" "Dsvm-itr2-sim" "Dtexture_synthesis-itr2-sim" "Dtracking-itr2-sim" "disparity-itr2-sim-3b683" "localization-itr2-sim-3b683" "mser-itr2-sim-3b683" "sift-itr2-sim-3b683" "stitch-itr2-sim-3b683" "svm-itr2-sim-3b683" "texture_synthesis-itr2-sim-3b683" "tracking-itr2-sim-3b683" "disparity-itr2-sim-3b683-wp" "localization-itr2-sim-3b683-wp" "mser-itr2-sim-3b683-wp" "sift-itr2-sim-3b683-wp" "stitch-itr2-sim-3b683-wp" "svm-itr2-sim-3b683-wp" "texture_synthesis-itr2-sim-3b683-wp" "tracking-itr2-sim-3b683-wp" "disparity-itr2-sim-3b683-dm" "localization-itr2-sim-3b683-dm" "mser-itr2-sim-3b683-dm" "sift-itr2-sim-3b683-dm" "stitch-itr2-sim-3b683-dm" "svm-itr2-sim-3b683-dm" "texture_synthesis-itr2-sim-3b683-dm" "tracking-itr2-sim-3b683-dm" "disparity-itr2-sim-3b683-dm-all" "localization-itr2-sim-3b683-dm-all" "mser-itr2-sim-3b683-dm-all" "sift-itr2-sim-3b683-dm-all" "stitch-itr2-sim-3b683-dm-all" "svm-itr2-sim-3b683-dm-all" "texture_synthesis-itr2-sim-3b683-dm-all" "tracking-itr2-sim-3b683-dm-all")

#declare -a arr=("Dmulti_ncut-itr2-sim" "multi_ncut-itr2-sim-3b683" "multi_ncut-itr2-sim-3b683-wp" "multi_ncut-itr2-sim-3b683-dm" "multi_ncut-itr2-sim-3b683-dm-all" "disparity-itr2-sim-3b683-dm" "localization-itr2-sim-3b683-dm" "mser-itr2-sim-3b683-dm" "sift-itr2-sim-3b683-dm" "stitch-itr2-sim-3b683-dm" "svm-itr2-sim-3b683-dm" "texture_synthesis-itr2-sim-3b683-dm" "tracking-itr2-sim-3b683-dm" "disparity-itr2-sim-3b683-dm-all" "localization-itr2-sim-3b683-dm-all" "mser-itr2-sim-3b683-dm-all" "sift-itr2-sim-3b683-dm-all" "stitch-itr2-sim-3b683-dm-all" "svm-itr2-sim-3b683-dm-all" "texture_synthesis-itr2-sim-3b683-dm-all" "tracking-itr2-sim-3b683-dm-all")

#declare -a arr=("Ddisparity-itr2-sqcif" "Dlocalization-itr2-sqcif" "Dmser-itr2-sqcif" "Dmulti_ncut-itr2-sqcif" "Dsift-itr2-sqcif" "Dstitch-itr2-sqcif" "Dsvm-itr2-sqcif" "Dtexture_synthesis-itr2-sqcif" "Dtracking-itr2-sqcif" "disparity-itr2-sqcif-3b683" "localization-itr2-sqcif-3b683" "mser-itr2-sqcif-3b683" "multi_ncut-itr2-sqcif-3b683" "sift-itr2-sqcif-3b683" "stitch-itr2-sqcif-3b683" "svm-itr2-sqcif-3b683" "texture_synthesis-itr2-sqcif-3b683" "tracking-itr2-sqcif-3b683" "disparity-itr2-sqcif-3b683-wp" "localization-itr2-sqcif-3b683-wp" "mser-itr2-sqcif-3b683-wp" "multi_ncut-itr2-sqcif-3b683-wp" "sift-itr2-sqcif-3b683-wp" "stitch-itr2-sqcif-3b683-wp" "svm-itr2-sqcif-3b683-wp" "texture_synthesis-itr2-sqcif-3b683-wp" "tracking-itr2-sqcif-3b683-wp" "disparity-itr2-sqcif-3b683-dm" "localization-itr2-sqcif-3b683-dm" "mser-itr2-sqcif-3b683-dm" "multi_ncut-itr2-sqcif-3b683-dm" "sift-itr2-sqcif-3b683-dm" "stitch-itr2-sqcif-3b683-dm" "svm-itr2-sqcif-3b683-dm" "texture_synthesis-itr2-sqcif-3b683-dm" "tracking-itr2-sqcif-3b683-dm" "disparity-itr2-sqcif-3b683-dm-all" "localization-itr2-sqcif-3b683-dm-all" "mser-itr2-sqcif-3b683-dm-all" "multi_ncut-itr2-sqcif-3b683-dm-all" "sift-itr2-sqcif-3b683-dm-all" "stitch-itr2-sqcif-3b683-dm-all" "svm-itr2-sqcif-3b683-dm-all" "texture_synthesis-itr2-sqcif-3b683-dm-all" "tracking-itr2-sqcif-3b683-dm-all")

#declare -a arr=("Ddisparity-sqcif" "Dlocalization-sqcif" "Dmser-sqcif" "Dmulti_ncut-sqcif" "Dsift-sqcif" "Dstitch-sqcif" "Dsvm-sqcif" "Dtexture_synthesis-sqcif" "Dtracking-sqcif" "disparity-sqcif-3b683" "localization-sqcif-3b683" "mser-sqcif-3b683" "multi_ncut-sqcif-3b683" "sift-sqcif-3b683" "stitch-sqcif-3b683" "svm-sqcif-3b683" "texture_synthesis-sqcif-3b683" "tracking-sqcif-3b683" "disparity-sqcif-3b683-wp" "localization-sqcif-3b683-wp" "mser-sqcif-3b683-wp" "multi_ncut-sqcif-3b683-wp" "sift-sqcif-3b683-wp" "stitch-sqcif-3b683-wp" "svm-sqcif-3b683-wp" "texture_synthesis-sqcif-3b683-wp" "tracking-sqcif-3b683-wp" "disparity-sqcif-3b683-dm" "localization-sqcif-3b683-dm" "mser-sqcif-3b683-dm" "multi_ncut-sqcif-3b683-dm" "sift-sqcif-3b683-dm" "stitch-sqcif-3b683-dm" "svm-sqcif-3b683-dm" "texture_synthesis-sqcif-3b683-dm" "tracking-sqcif-3b683-dm" "disparity-sqcif-3b683-dm-all" "localization-sqcif-3b683-dm-all" "mser-sqcif-3b683-dm-all" "multi_ncut-sqcif-3b683-dm-all" "sift-sqcif-3b683-dm-all" "stitch-sqcif-3b683-dm-all" "svm-sqcif-3b683-dm-all" "texture_synthesis-sqcif-3b683-dm-all" "tracking-sqcif-3b683-dm-all")

#declare -a arr=("Da2time01" "Daifftr01" "Daifirf01" "Daiifft01" "Dbasefp01" "Dbitmnp01" "Dcacheb01" "Dcanrdr01" "Didctrn01" "Diirflt01" "Dmatrix01" "Dpntrch01" "Dpuwmod01" "Drspeed01" "Dtblook01" "Dttsprk01" "a2time01-3b683" "aifftr01-3b683" "aifirf01-3b683" "aiifft01-3b683" "basefp01-3b683" "bitmnp01-3b683" "cacheb01-3b683" "canrdr01-3b683" "idctrn01-3b683" "iirflt01-3b683" "matrix01-3b683" "pntrch01-3b683" "puwmod01-3b683" "rspeed01-3b683" "tblook01-3b683" "ttsprk01-3b683" "a2time01-3b683-wp" "aifftr01-3b683-wp" "aifirf01-3b683-wp" "aiifft01-3b683-wp" "basefp01-3b683-wp" "bitmnp01-3b683-wp" "cacheb01-3b683-wp" "canrdr01-3b683-wp" "idctrn01-3b683-wp" "iirflt01-3b683-wp" "matrix01-3b683-wp" "pntrch01-3b683-wp" "puwmod01-3b683-wp" "rspeed01-3b683-wp" "tblook01-3b683-wp" "ttsprk01-3b683-wp" "a2time01-3b683-dm" "aifftr01-3b683-dm" "aifirf01-3b683-dm" "aiifft01-3b683-dm" "basefp01-3b683-dm" "bitmnp01-3b683-dm" "cacheb01-3b683-dm" "canrdr01-3b683-dm" "idctrn01-3b683-dm" "iirflt01-3b683-dm" "matrix01-3b683-dm" "pntrch01-3b683-dm" "puwmod01-3b683-dm" "rspeed01-3b683-dm" "tblook01-3b683-dm" "ttsprk01-3b683-dm" "a2time01-3b683-dm-all" "aifftr01-3b683-dm-all" "aifirf01-3b683-dm-all" "aiifft01-3b683-dm-all" "basefp01-3b683-dm-all" "bitmnp01-3b683-dm-all" "cacheb01-3b683-dm-all" "canrdr01-3b683-dm-all" "idctrn01-3b683-dm-all" "iirflt01-3b683-dm-all" "matrix01-3b683-dm-all" "pntrch01-3b683-dm-all" "puwmod01-3b683-dm-all" "rspeed01-3b683-dm-all" "tblook01-3b683-dm-all" "ttsprk01-3b683-dm-all")

#declare -a arr=("Da2time01-cld" "Daifftr01-cld" "Daifirf01-cld" "Daiifft01-cld" "Dbasefp01-cld" "Dbitmnp01-cld" "Dcacheb01-cld" "Dcanrdr01-cld" "Didctrn01-cld" "Diirflt01-cld" "Dmatrix01-cld" "Dpntrch01-cld" "Dpuwmod01-cld" "Drspeed01-cld" "Dtblook01-cld" "Dttsprk01-cld" "a2time01-cld-3b683" "aifftr01-cld-3b683" "aifirf01-cld-3b683" "aiifft01-cld-3b683" "basefp01-cld-3b683" "bitmnp01-cld-3b683" "cacheb01-cld-3b683" "canrdr01-cld-3b683" "idctrn01-cld-3b683" "iirflt01-cld-3b683" "matrix01-cld-3b683" "pntrch01-cld-3b683" "puwmod01-cld-3b683" "rspeed01-cld-3b683" "tblook01-cld-3b683" "ttsprk01-cld-3b683" "a2time01-cld-3b683-wp" "aifftr01-cld-3b683-wp" "aifirf01-cld-3b683-wp" "aiifft01-cld-3b683-wp" "basefp01-cld-3b683-wp" "bitmnp01-cld-3b683-wp" "cacheb01-cld-3b683-wp" "canrdr01-cld-3b683-wp" "idctrn01-cld-3b683-wp" "iirflt01-cld-3b683-wp" "matrix01-cld-3b683-wp" "pntrch01-cld-3b683-wp" "puwmod01-cld-3b683-wp" "rspeed01-cld-3b683-wp" "tblook01-cld-3b683-wp" "ttsprk01-cld-3b683-wp")
#declare -a arr=("a2time01-cld-3b683-dm" "aifftr01-cld-3b683-dm" "aifirf01-cld-3b683-dm" "aiifft01-cld-3b683-dm" "basefp01-cld-3b683-dm" "bitmnp01-cld-3b683-dm" "cacheb01-cld-3b683-dm" "canrdr01-cld-3b683-dm" "idctrn01-cld-3b683-dm" "iirflt01-cld-3b683-dm" "matrix01-cld-3b683-dm" "pntrch01-cld-3b683-dm" "puwmod01-cld-3b683-dm" "rspeed01-cld-3b683-dm" "tblook01-cld-3b683-dm" "ttsprk01-cld-3b683-dm" "a2time01-cld-3b683-dm-all" "aifftr01-cld-3b683-dm-all" "aifirf01-cld-3b683-dm-all" "aiifft01-cld-3b683-dm-all" "basefp01-cld-3b683-dm-all" "bitmnp01-cld-3b683-dm-all" "cacheb01-cld-3b683-dm-all" "canrdr01-cld-3b683-dm-all" "idctrn01-cld-3b683-dm-all" "iirflt01-cld-3b683-dm-all" "matrix01-cld-3b683-dm-all" "pntrch01-cld-3b683-dm-all" "puwmod01-cld-3b683-dm-all" "rspeed01-cld-3b683-dm-all" "tblook01-cld-3b683-dm-all" "ttsprk01-cld-3b683-dm-all")

#declare -a arr=("disparity-itr2-sqcif" "disparity-itr2-sqcif-cld-3b683" "disparity-itr2-sqcif-3b683-wp" "disparity-itr2-sqcif-3b683-dm" "disparity-itr2-sqcif-3b683-dm-all")
#declare -a arr=("disparity-itr2-sim_fast" "disparity-itr2-sim_fast-3b683" "disparity-itr2-sim_fast-3b683-wp" "disparity-itr2-sim_fast-3b683-dm" "disparity-itr2-sim_fast-3b683-dm-all")
#declare -a arr=("Ddisparity-sqcif" "disparity-sqcif-3b683" "disparity-sqcif-3b683-wp" "disparity-sqcif-3b683-dm" "disparity-sqcif-3b683-dm-all")
#declare -a arr=("Ddisparity-sim" "disparity-sim-3b683" "disparity-sim-3b683-wp" "disparity-sim-3b683-dm" "disparity-sim-3b683-dm-all")

#declare -a arr=("Ddisparity-itr2-sim" "Dlocalization-itr2-sim" "Dmser-itr2-sim" "Dsift-itr2-sim" "Dsvm-itr2-sim" "Dtexture_synthesis-itr2-sim" "Daifftr01" "Daiifft01" "Dcacheb01" "Dmatrix01" "Dttsprk01" "disparity-itr2-sim-3b683" "localization-itr2-sim-3b683" "mser-itr2-sim-3b683" "sift-itr2-sim-3b683" "svm-itr2-sim-3b683" "texture_synthesis-itr2-sim-3b683" "aifftr01-3b683" "aiifft01-3b683" "cacheb01-3b683" "matrix01-3b683" "ttsprk01-3b683" "disparity-itr2-sim-3b683-wp" "localization-itr2-sim-3b683-wp" "mser-itr2-sim-3b683-wp" "sift-itr2-sim-3b683-wp" "svm-itr2-sim-3b683-wp" "texture_synthesis-itr2-sim-3b683-wp" "aifftr01-3b683-wp" "aiifft01-3b683-wp" "cacheb01-3b683-wp" "matrix01-3b683-wp" "ttsprk01-3b683-wp" "disparity-itr2-sim-3b683-dm" "localization-itr2-sim-3b683-dm" "mser-itr2-sim-3b683-dm" "sift-itr2-sim-3b683-dm" "svm-itr2-sim-3b683-dm" "texture_synthesis-itr2-sim-3b683-dm" "aifftr01-3b683-dm" "aiifft01-3b683-dm" "cacheb01-3b683-dm" "matrix01-3b683-dm" "ttsprk01-3b683-dm" "disparity-itr2-sim-3b683-dm-all" "localization-itr2-sim-3b683-dm-all" "mser-itr2-sim-3b683-dm-all" "sift-itr2-sim-3b683-dm-all" "svm-itr2-sim-3b683-dm-all" "texture_synthesis-itr2-sim-3b683-dm-all" "aifftr01-3b683-dm-all" "aiifft01-3b683-dm-all" "cacheb01-3b683-dm-all" "matrix01-3b683-dm-all" "ttsprk01-3b683-dm-all")

#declare -a arr=("disparity-itr2-sim-3b683-dm-all" "localization-itr2-sim-3b683-dm-all" "mser-itr2-sim-3b683-dm-all" "sift-itr2-sim-3b683-dm-all" "svm-itr2-sim-3b683-dm-all" "texture_synthesis-itr2-sim-3b683-dm-all" "aifftr01-3b683-dm-all" "aiifft01-3b683-dm-all" "cacheb01-3b683-dm-all" "matrix01-3b683-dm-all" "ttsprk01-3b683-dm-all")

#declare -a arr=("disparity-itr2-sim-vma" "localization-itr2-sim-vma" "mser-itr2-sim-vma" "sift-itr2-sim-vma" "svm-itr2-sim-vma" "texture_synthesis-itr2-sim-vma" "aifftr01-vma" "aiifft01-vma" "cacheb01-vma" "matrix01-vma" "ttsprk01-vma")

#declare -a arr=("Daifftr01-mlock" "Daiifft01-mlock" "Dcacheb01-mlock" "Dmatrix01-mlock" "Dttsprk01-mlock" "aifftr01-mlock-3b683" "aiifft01-mlock-3b683" "cacheb01-mlock-3b683" "matrix01-mlock-3b683" "ttsprk01-mlock-3b683" "aifftr01-mlock-3b683-wp" "aiifft01-mlock-3b683-wp" "cacheb01-mlock-3b683-wp" "matrix01-mlock-3b683-wp" "ttsprk01-mlock-3b683-wp" "aifftr01-mlock-3b683-dm" "aiifft01-mlock-3b683-dm" "cacheb01-mlock-3b683-dm" "matrix01-mlock-3b683-dm" "ttsprk01-mlock-3b683-dm" "aifftr01-mlok-3b683-dm-all" "aiifft01-mlok-3b683-dm-all" "cacheb01-mlok-3b683-dm-all" "matrix01-mlok-3b683-dm-all" "ttsprk01-mlok-3b683-dm-all")

#declare -a arr=("Dpntrch01-mlock" "pntrch01-mlock-3b683" "pntrch01-mlock-3b683-wp" "pntrch01-mlock-3b683-dm" "pntrch01-mlok-3b683-dm-all")

#declare -a arr=("Ddisparity-itr2-sim" "Dmser-itr2-sim" "Dsift-itr2-sim" "Dsvm-itr2-sim" "Dtexture_synthesis-itr2-sim" "Daifftr01" "Daiifft01" "Dmatrix01" "disparity-itr2-sim-3b683" "mser-itr2-sim-3b683" "sift-itr2-sim-3b683" "svm-itr2-sim-3b683" "texture_synthesis-itr2-sim-3b683" "aifftr01-3b683" "aiifft01-3b683" "matrix01-3b683" "disparity-itr2-sim-3b683-wp"  "mser-itr2-sim-3b683-wp" "sift-itr2-sim-3b683-wp" "svm-itr2-sim-3b683-wp" "texture_synthesis-itr2-sim-3b683-wp" "aifftr01-3b683-wp" "aiifft01-3b683-wp" "matrix01-3b683-wp" "disparity-itr2-sim-3b683-dm" "mser-itr2-sim-3b683-dm" "sift-itr2-sim-3b683-dm" "svm-itr2-sim-3b683-dm" "texture_synthesis-itr2-sim-3b683-dm" "aifftr01-3b683-dm" "aiifft01-3b683-dm" "matrix01-3b683-dm" "disparity-itr2-sim-3b683-dm-all" "mser-itr2-sim-3b683-dm-all" "sift-itr2-sim-3b683-dm-all" "svm-itr2-sim-3b683-dm-all" "texture_synthesis-itr2-sim-3b683-dm-all" "aifftr01-3b683-dm-all" "aiifft01-3b683-dm-all" "matrix01-3b683-dm-all")

#declare -a arr=("Ddisparity-itr2-sim" "Dmser-itr2-sim" "Dsift-itr2-sim" "Dsvm-itr2-sim" "Dtexture_synthesis-itr2-sim" "Daifftr01" "Daiifft01" "Dmatrix01" "disparity-itr2-sim-3b1365" "mser-itr2-sim-3b1365" "sift-itr2-sim-3b1365" "svm-itr2-sim-3b1365" "texture_synthesis-itr2-sim-3b1365" "aifftr01-3b1365" "aiifft01-3b1365" "matrix01-3b1365" "disparity-itr2-sim-3b1365-wp"  "mser-itr2-sim-3b1365-wp" "sift-itr2-sim-3b1365-wp" "svm-itr2-sim-3b1365-wp" "texture_synthesis-itr2-sim-3b1365-wp" "aifftr01-3b1365-wp" "aiifft01-3b1365-wp" "matrix01-3b1365-wp" "disparity-itr2-sim-3b1365-dm" "mser-itr2-sim-3b1365-dm" "sift-itr2-sim-3b1365-dm" "svm-itr2-sim-3b1365-dm" "texture_synthesis-itr2-sim-3b1365-dm" "aifftr01-3b1365-dm" "aiifft01-3b1365-dm" "matrix01-3b1365-dm" "disparity-itr2-sim-3b1365-dm-all" "mser-itr2-sim-3b1365-dm-all" "sift-itr2-sim-3b1365-dm-all" "svm-itr2-sim-3b1365-dm-all" "texture_synthesis-itr2-sim-3b1365-dm-all" "aifftr01-3b1365-dm-all" "aiifft01-3b1365-dm-all" "matrix01-3b1365-dm-all")

#declare -a arr=("Ddisparity-itr2-sqcif" "Dlocalization-itr2-sqcif" "Dmser-itr2-sqcif" "Dmulti_ncut-itr2-sqcif" "Dsift-itr2-sqcif" "Dstitch-itr2-sqcif" "Dsvm-itr2-sqcif" "Dtexture_synthesis-itr2-sqcif" "Dtracking-itr2-sqcif" "disparity-itr2-sqcif-3b1365" "localization-itr2-sqcif-3b1365" "mser-itr2-sqcif-3b1365" "multi_ncut-itr2-sqcif-3b1365" "sift-itr2-sqcif-3b1365" "stitch-itr2-sqcif-3b1365" "svm-itr2-sqcif-3b1365" "texture_synthesis-itr2-sqcif-3b1365" "tracking-itr2-sqcif-3b1365" "disparity-itr2-sqcif-3b1365-wp" "localization-itr2-sqcif-3b1365-wp" "mser-itr2-sqcif-3b1365-wp" "multi_ncut-itr2-sqcif-3b1365-wp" "sift-itr2-sqcif-3b1365-wp" "stitch-itr2-sqcif-3b1365-wp" "svm-itr2-sqcif-3b1365-wp" "texture_synthesis-itr2-sqcif-3b1365-wp" "tracking-itr2-sqcif-3b1365-wp" "disparity-itr2-sqcif-3b1365-dm" "localization-itr2-sqcif-3b1365-dm" "mser-itr2-sqcif-3b1365-dm" "multi_ncut-itr2-sqcif-3b1365-dm" "sift-itr2-sqcif-3b1365-dm" "stitch-itr2-sqcif-3b1365-dm" "svm-itr2-sqcif-3b1365-dm" "texture_synthesis-itr2-sqcif-3b1365-dm" "tracking-itr2-sqcif-3b1365-dm" "disparity-itr2-sqcif-3b1365-dm-all" "localization-itr2-sqcif-3b1365-dm-all" "mser-itr2-sqcif-3b1365-dm-all" "multi_ncut-itr2-sqcif-3b1365-dm-all" "sift-itr2-sqcif-3b1365-dm-all" "stitch-itr2-sqcif-3b1365-dm-all" "svm-itr2-sqcif-3b1365-dm-all" "texture_synthesis-itr2-sqcif-3b1365-dm-all" "tracking-itr2-sqcif-3b1365-dm-all")

#declare -a arr=("Ddisparity-itr2-mlock-sim" "Dmser-itr2-mlock-sim" "Dsift-itr2-mlock-sim" "Dsvm-itr2-mlock-sim" "Dtexture_synthesis-itr2-mlock-sim" "Daifftr01-mlock" "Daiifft01-mlock" "Dmatrix01-mlock" "disparity-itr2-mlock-sim-3b683" "mser-itr2-mlock-sim-3b683" "sift-itr2-mlock-sim-3b683" "svm-itr2-mlock-sim-3b683" "texture_synthesis-itr2-mlock-sim-3b683" "aifftr01-mlock-3b683" "aiifft01-mlock-3b683" "matrix01-mlock-3b683" "disparity-itr2-mlock-sim-3b683-wp" "mser-itr2-mlock-sim-3b683-wp" "sift-itr2-mlock-sim-3b683-wp" "svm-itr2-mlock-sim-3b683-wp" "texture_synthesis-itr2-mlock-sim-3b683-wp" "aifftr01-mlock-3b683-wp" "aiifft01-mlock-3b683-wp" "matrix01-mlock-3b683-wp" "disparity-itr2-mlock-sim-3b683-dm" "mser-itr2-mlock-sim-3b683-dm" "sift-itr2-mlock-sim-3b683-dm" "svm-itr2-mlock-sim-3b683-dm" "texture_synthesis-itr2-mlock-sim-3b683-dm" "aifftr01-mlock-3b683-dm" "aiifft01-mlock-3b683-dm" "matrix01-mlock-3b683-dm" "disparity-itr2-mlock-sim-3b683-dm-all" "mser-itr2-mlock-sim-3b683-dm-all" "sift-itr2-mlock-sim-3b683-dm-all" "svm-itr2-mlock-sim-3b683-dm-all" "texture_synthesis-itr2-mlock-sim-3b683-dm-all" "aifftr01-mlock-3b683-dm-all" "aiifft01-mlock-3b683-dm-all" "matrix01-mlock-3b683-dm-all")

#declare -a arr=("Daifftr01-aiifft01-matrix01-itr" "aifftr01-aiifft01-matrix01-itr-1b2048" "aifftr01-aiifft01-matrix01-itr-1b2048-wp" "aifftr01-aiifft01-matrix01-itr-1b2048-dm-all")

#declare -a arr=("Ddisparity-itr2-mlock-sim" "Dmser-itr2-mlock-sim" "Dsift-itr2-mlock-sim" "Dsvm-itr2-mlock-sim" "Dtexture_synthesis-itr2-mlock-sim" "Daifftr01-mlock" "Daiifft01-mlock" "Dmatrix01-mlock" "disparity-itr2-mlock-sim-3brnd" "mser-itr2-mlock-sim-3brnd" "sift-itr2-mlock-sim-3brnd" "svm-itr2-mlock-sim-3brnd" "texture_synthesis-itr2-mlock-sim-3brnd" "aifftr01-mlock-3brnd" "aiifft01-mlock-3brnd" "matrix01-mlock-3brnd" "disparity-itr2-mlock-sim-3brnd-wp" "mser-itr2-mlock-sim-3brnd-wp" "sift-itr2-mlock-sim-3brnd-wp" "svm-itr2-mlock-sim-3brnd-wp" "texture_synthesis-itr2-mlock-sim-3brnd-wp" "aifftr01-mlock-3brnd-wp" "aiifft01-mlock-3brnd-wp" "matrix01-mlock-3brnd-wp" "disparity-itr2-mlock-sim-3brnd-dm" "mser-itr2-mlock-sim-3brnd-dm" "sift-itr2-mlock-sim-3brnd-dm" "svm-itr2-mlock-sim-3brnd-dm" "texture_synthesis-itr2-mlock-sim-3brnd-dm" "aifftr01-mlock-3brnd-dm" "aiifft01-mlock-3brnd-dm" "matrix01-mlock-3brnd-dm" "disparity-itr2-mlock-sim-3brnd-dm-all" "mser-itr2-mlock-sim-3brnd-dm-all" "sift-itr2-mlock-sim-3brnd-dm-all" "svm-itr2-mlock-sim-3brnd-dm-all" "texture_synthesis-itr2-mlock-sim-3brnd-dm-all" "aifftr01-mlock-3brnd-dm-all" "aiifft01-mlock-3brnd-dm-all" "matrix01-mlock-3brnd-dm-all")

#declare -a arr=("Ddisparity-itr2-mlock-sim" "Dmser-itr2-mlock-sim" "Dsift-itr2-mlock-sim" "Dsvm-itr2-mlock-sim" "Dtexture_synthesis-itr2-mlock-sim" "Daifftr01-mlock" "Daiifft01-mlock" "Dmatrix01-mlock" "disparity-itr2-mlock-sim-3b1365" "mser-itr2-mlock-sim-3b1365" "sift-itr2-mlock-sim-3b1365" "svm-itr2-mlock-sim-3b1365" "texture_synthesis-itr2-mlock-sim-3b1365" "aifftr01-mlock-3b1365" "aiifft01-mlock-3b1365" "matrix01-mlock-3b1365" "disparity-itr2-mlock-sim-3b1365-wp" "mser-itr2-mlock-sim-3b1365-wp" "sift-itr2-mlock-sim-3b1365-wp" "svm-itr2-mlock-sim-3b1365-wp" "texture_synthesis-itr2-mlock-sim-3b1365-wp" "aifftr01-mlock-3b1365-wp" "aiifft01-mlock-3b1365-wp" "matrix01-mlock-3b1365-wp" "disparity-itr2-mlock-sim-3b1365-dm" "mser-itr2-mlock-sim-3b1365-dm" "sift-itr2-mlock-sim-3b1365-dm" "svm-itr2-mlock-sim-3b1365-dm" "texture_synthesis-itr2-mlock-sim-3b1365-dm" "aifftr01-mlock-3b1365-dm" "aiifft01-mlock-3b1365-dm" "matrix01-mlock-3b1365-dm" "disparity-itr2-mlock-sim-3b1365-dm-all" "mser-itr2-mlock-sim-3b1365-dm-all" "sift-itr2-mlock-sim-3b1365-dm-all" "svm-itr2-mlock-sim-3b1365-dm-all" "texture_synthesis-itr2-mlock-sim-3b1365-dm-all" "aifftr01-mlock-3b1365-dm-all" "aiifft01-mlock-3b1365-dm-all" "matrix01-mlock-3b1365-dm-all")

#declare -a arr=("Daifftr01-aiifft01-itr" "aifftr01-aiifft01-itr-2b1024" "aifftr01-aiifft01-itr-2b1024-wp" "aifftr01-aiifft01-itr-2b1024-dm-all")

#declare -a arr=("disparity-itr2-mlock-sim-3b683-dm-h" "mser-itr2-mlock-sim-3b683-dm-h" "sift-itr2-mlock-sim-3b683-dm-h" "svm-itr2-mlock-sim-3b683-dm-h" "texture_synthesis-itr2-mlock-sim-3b683-dm-h" "aifftr01-mlock-3b683-dm-h" "aiifft01-mlock-3b683-dm-h" "matrix01-mlock-3b683-dm-h" "cacheb01-mlock-3b683-dm-h" "pntrch01-mlock-3b683-dm-h" "ttsprk01-mlock-3b683-dm-h")

#declare -a arr=("Dcacheb01-mlock" "Dpntrch01-mlock" "Dttsprk01-mlock" "cacheb01-mlock-3b683" "pntrch01-mlock-3b683" "ttsprk01-mlock-3b683" "cacheb01-mlock-3b683-wp" "pntrch01-mlock-3b683-wp" "ttsprk01-mlock-3b683-wp" "cacheb01-mlock-3b683-dm-all" "pntrch01-mlock-3b683-dm-all" "ttsprk01-mlock-3b683-dm-all")

#declare -a arr=("Dlocalization-itr2-mlock-sim" "localization-itr2-mlock-sim-3b683" "localization-itr2-mlock-sim-3b683-wp" "localization-itr2-mlock-sim-3b683-dm-h" "localization-itr2-mlock-sim-3b683-dm-all")

#declare -a arr=("aifftr01-inf-1mcf" "aiifft01-inf-1mcf" "matrix01-inf-1mcf")
#declare -a arr=("aifftr01-inf-1mcf-dm-all" "aiifft01-inf-1mcf-dm-all" "matrix01-inf-1mcf-dm-all")

# mcf dump stat
#declare -a arr=("disparity-inf-1mcf-ds" "mser-inf-1mcf-ds" "sift-inf-1mcf-ds" "svm-inf-1mcf-ds" "texture_synthesis-inf-1mcf-ds" "aifftr01-inf-1mcf-ds" "aiifft01-inf-1mcf-ds" "matrix01-inf-1mcf-ds")
#declare -a arr=("disparity-inf-1mcf-ds-dm-all" "mser-inf-1mcf-ds-dm-all" "sift-inf-1mcf-ds-dm-all" "svm-inf-1mcf-ds-dm-all" "texture_synthesis-inf-1mcf-ds-dm-all" "aifftr01-inf-1mcf-ds-dm-all" "aiifft01-inf-1mcf-ds-dm-all" "matrix01-inf-1mcf-ds-dm-all")

#declare -a arr=("3disparity-inf-1mcf-ds-wp" "3mser-inf-1mcf-ds-wp" "3sift-inf-1mcf-ds-wp" "3svm-inf-1mcf-ds-wp" "3texture_synthesis-inf-1mcf-ds-wp" "3aifftr01-inf-1mcf-ds-wp" "3aiifft01-inf-1mcf-ds-wp" "3matrix01-inf-1mcf-ds-wp")
#declare -a arr=("3disparity-inf-1mcf-ds-dm-all" "3mser-inf-1mcf-ds-dm-all" "3sift-inf-1mcf-ds-dm-all" "3svm-inf-1mcf-ds-dm-all" "3texture_synthesis-inf-1mcf-ds-dm-all" "3aifftr01-inf-1mcf-ds-dm-all" "3aiifft01-inf-1mcf-ds-dm-all" "3matrix01-inf-1mcf-ds-dm-all")
#declare -a arr=("3disparity-inf-1mcf-ds-dm-h" "3mser-inf-1mcf-ds-dm-h" "3sift-inf-1mcf-ds-dm-h" "3svm-inf-1mcf-ds-dm-h" "3texture_synthesis-inf-1mcf-ds-dm-h" "3aifftr01-inf-1mcf-ds-dm-h" "3aiifft01-inf-1mcf-ds-dm-h" "3matrix01-inf-1mcf-ds-dm-h")

#declare -a arr=("disparity-inf-3mcf-ds-wp" "mser-inf-3mcf-ds-wp" "sift-inf-3mcf-ds-wp" "svm-inf-3mcf-ds-wp" "texture_synthesis-inf-3mcf-ds-wp" "aifftr01-inf-3mcf-ds-wp" "aiifft01-inf-3mcf-ds-wp" "matrix01-inf-3mcf-ds-wp")
#declare -a arr=("disparity-inf-3mcf-ds-dm-all" "mser-inf-3mcf-ds-dm-all" "sift-inf-3mcf-ds-dm-all" "svm-inf-3mcf-ds-dm-all" "texture_synthesis-inf-3mcf-ds-dm-all" "aifftr01-inf-3mcf-ds-dm-all" "aiifft01-inf-3mcf-ds-dm-all" "matrix01-inf-3mcf-ds-dm-all")
#declare -a arr=("disparity-inf-3mcf-ds-dm-h" "mser-inf-3mcf-ds-dm-h" "sift-inf-3mcf-ds-dm-h" "svm-inf-3mcf-ds-dm-h" "texture_synthesis-inf-3mcf-ds-dm-h" "aifftr01-inf-3mcf-ds-dm-h" "aiifft01-inf-3mcf-ds-dm-h" "matrix01-inf-3mcf-ds-dm-h")

#declare -a arr=("3disparity-inf-1bzip2-ds-wp" "3mser-inf-1bzip2-ds-wp" "3sift-inf-1bzip2-ds-wp" "3svm-inf-1bzip2-ds-wp" "3texture_synthesis-inf-1bzip2-ds-wp" "3aifftr01-inf-1bzip2-ds-wp" "3aiifft01-inf-1bzip2-ds-wp" "3matrix01-inf-1bzip2-ds-wp" "3disparity-inf-1bzip2-ds-dm-all" "3mser-inf-1bzip2-ds-dm-all" "3sift-inf-1bzip2-ds-dm-all" "3svm-inf-1bzip2-ds-dm-all" "3texture_synthesis-inf-1bzip2-ds-dm-all" "3aifftr01-inf-1bzip2-ds-dm-all" "3aiifft01-inf-1bzip2-ds-dm-all" "3matrix01-inf-1bzip2-ds-dm-all" "3disparity-inf-1bzip2-ds-dm-h" "3mser-inf-1bzip2-ds-dm-h" "3sift-inf-1bzip2-ds-dm-h" "3svm-inf-1bzip2-ds-dm-h" "3texture_synthesis-inf-1bzip2-ds-dm-h" "3aifftr01-inf-1bzip2-ds-dm-h" "3aiifft01-inf-1bzip2-ds-dm-h" "3matrix01-inf-1bzip2-ds-dm-h")

#declare -a arr=("disparity-inf-3bzip2-ds-wp" "mser-inf-3bzip2-ds-wp" "sift-inf-3bzip2-ds-wp" "svm-inf-3bzip2-ds-wp" "texture_synthesis-inf-3bzip2-ds-wp" "aifftr01-inf-3bzip2-ds-wp" "aiifft01-inf-3bzip2-ds-wp" "matrix01-inf-3bzip2-ds-wp" "disparity-inf-3bzip2-ds-dm-all" "mser-inf-3bzip2-ds-dm-all" "sift-inf-3bzip2-ds-dm-all" "svm-inf-3bzip2-ds-dm-all" "texture_synthesis-inf-3bzip2-ds-dm-all" "aifftr01-inf-3bzip2-ds-dm-all" "aiifft01-inf-3bzip2-ds-dm-all" "matrix01-inf-3bzip2-ds-dm-all" "disparity-inf-3bzip2-ds-dm-h" "mser-inf-3bzip2-ds-dm-h" "sift-inf-3bzip2-ds-dm-h" "svm-inf-3bzip2-ds-dm-h" "texture_synthesis-inf-3bzip2-ds-dm-h" "aifftr01-inf-3bzip2-ds-dm-h" "aiifft01-inf-3bzip2-ds-dm-h" "matrix01-inf-3bzip2-ds-dm-h")

#declare -a arr=("bzip2-ds-wp")

#declare -a arr=("3svm-inf-1bzip2-ds-wp" "3svm-inf-1bzip2-ds-dm-h" "3svm-inf-1bzip2-ds-dm-all" "svm-inf-3bzip2-ds-wp" "svm-inf-3bzip2-ds-dm-h" "svm-inf-3bzip2-ds-dm-all")

#declare -a arr=("3sift-inf-1mcf-ds-wp" "3sift-inf-1mcf-ds-dm-h" "3sift-inf-1mcf-ds-dm-all")
declare -a arr=("matrix01-core3-3b683-dm-all")

for i in "${arr[@]}"
do
     gnome-terminal -x bash -c "./build/ARM/gem5.opt -d mlock-dm/2mb-no-hz --stats-file=${i}-${CONFIG}.txt configs/spec2006/simpoint_fs.py --cfg=configs/spec2006/arm.cfg --disk-image=/home/farshchi/projects/gem5/full_system_images/disks/linux-arm-ael.img --num-cpus=4 --mem-size=2048MB --kernel=/home/farshchi/projects/gem5/gem5-linux/vmlinux --machine-type=VExpress_EMM --dtb-file=/home/farshchi/projects/gem5/gem5-linux/arch/arm/boot/dts/vexpress-v2p-ca15-tc1-gem5_4cpus.dtb --mem-type=lpddr2_s4_1066_x32 --simpoint-mode=batch --benchmark=$i --checkpoint-dir=m5out/mcf-expr-no_hz-fast_rcu-2/cpt.5446726445500 && sleep 8d"
done

#for i in "${arr[@]}"
#do
#     gnome-terminal -x bash -c "./build/ARM/gem5.opt -d mlock-dm/2mb-shared-new --stats-file=${i}-${CONFIG}.txt  configs/spec2006/simpoint_fs.py --cfg=configs/spec2006/arm.cfg --disk-image=/home/farshchi/projects/gem5/full_system_images/disks/linux-arm-ael.img --num-cpus=4 --mem-size=512MB --kernel=/home/farshchi/projects/gem5/gem5-linux/vmlinux --machine-type=VExpress_EMM --dtb-file=/home/farshchi/projects/gem5/gem5-linux/arch/arm/boot/dts/vexpress-v2p-ca15-tc1-gem5_4cpus.dtb --mem-type=lpddr2_s4_1066_x32 --simpoint-mode=batch --benchmark=$i --checkpoint-dir=m5out/determ_heap_2/cpt.73061303385000 && sleep 8d"
#done
