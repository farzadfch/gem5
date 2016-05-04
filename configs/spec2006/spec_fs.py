#spec_fs.py

import sys

class fsBench:
    def __init__(self, cmd):
        self.cmd = cmd
        self.cwd = "/root/spec"
        self.simpoint = 1

    def setCwd(self, cwd):
        self.cwd = cwd

    def setSimpoint(self, simpoint):
        self.simpoint = simpoint

    def setStartInst(self, inst):
        self.start_inst = inst

    def setName(self, name):
        self.name = name

    def getCmd(self):
        return self.cmd

    def getCwd(self):
        return self.cwd

    def getSimpoint(self):
        return self.simpoint

    def getStartInst(self):
        return self.start_inst

    def getName(self):
        return self.name

spec_fs_cmd = {}

# Set benchmark command line
spec_fs_cmd["perlbench"] = fsBench("/cpu2006/bin/spec.perlbench_base.x86-gcc -I/cpu2006/400.perlbench/data/all/input/splitmail.pl /cpu2006/400.perlbench/data/all/input/splitmail.pl 1600 12 26 16 4500")
spec_fs_cmd["bzip2"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;taskset -c 0 /root/spec/bzip2 /root/spec/dryer.jpg 280")
spec_fs_cmd["milc"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;taskset -c 0 /root/spec/milc < /root/spec/su3imp.in")
spec_fs_cmd["astar"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;taskset -c 0 /root/spec/astar /root/spec/lake.cfg")
spec_fs_cmd["hmmer"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;taskset -c 0 /root/spec/hmmer /root/spec/nph3.hmm /root/spec/swiss41")
spec_fs_cmd["cactusADM"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part7/tasks;taskset -c 2 /root/spec/cactusADM /root/spec/benchADM.par")
spec_fs_cmd["hrt1"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;/root/hrt_dump -m 2048 -i 7 -c 0 -o fifo -I 20")
spec_fs_cmd["hrt2"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part2/tasks;/root/hrt -m 2048 -i 0 -c 1 -o fifo -I 30")
spec_fs_cmd["hrt3"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part3/tasks;/root/hrt -m 2048 -i 0 -c 2 -o fifo -I 40")
spec_fs_cmd["hrt4"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part4/tasks;/root/hrt -m 2048 -i 0 -c 3 -o fifo -I 60")
spec_fs_cmd["leslie3d"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;taskset -c 0 /root/spec/leslie3d < /root/spec/leslie3d.in")
spec_fs_cmd["omnetpp"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;taskset -c 0 /root/spec/omnetpp /root/spec/omnetpp.ini")
#spec_fs_cmd["disparity"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part5/tasks;taskset -c 0 /root/disparity /root")
spec_fs_cmd["libquantum"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;taskset -c 0 /root/spec/libquantum 1397 8")
spec_fs_cmd["lbm1"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part2/tasks;taskset -c 1 /root/spec/lbm  3000 reference.dat 0 0 /root/spec/100_100_130_ldc.of")
spec_fs_cmd["lbm2"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part3/tasks;taskset -c 2 /root/spec/lbm  3000 reference.dat 0 0 /root/spec/100_100_130_ldc.of")
spec_fs_cmd["lbm3"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part4/tasks;taskset -c 3 /root/spec/lbm  3000 reference.dat 0 0 /root/spec/100_100_130_ldc.of")
spec_fs_cmd["omnetpp1"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part2/tasks;taskset -c 1 /root/spec/omnetpp /root/spec/omnetpp.ini")
spec_fs_cmd["omnetpp2"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part3/tasks;taskset -c 2 /root/spec/omnetpp /root/spec/omnetpp.ini")
spec_fs_cmd["omnetpp3"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part4/tasks;taskset -c 3 /root/spec/omnetpp /root/spec/omnetpp.ini")
spec_fs_cmd["libquantum1"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part5/tasks;taskset -c 0 /root/spec/libquantum 1397 8")
spec_fs_cmd["libquantum2"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part6/tasks;taskset -c 1 /root/spec/libquantum 1397 8")
spec_fs_cmd["libquantum3"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part7/tasks;taskset -c 2 /root/spec/libquantum 1397 8")
spec_fs_cmd["libquantum4"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part8/tasks;taskset -c 3 /root/spec/libquantum 1397 8")
spec_fs_cmd["mcf1"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part5/tasks;taskset -c 0 /root/spec/mcf /root/spec/inp.in")
spec_fs_cmd["mcf2"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part2/tasks;taskset -c 1 /root/spec/mcf /root/spec/inp.in")
spec_fs_cmd["mcf3"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part3/tasks;taskset -c 2 /root/spec/mcf /root/spec/inp.in")
spec_fs_cmd["mcf4"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part4/tasks;taskset -c 3 /root/spec/mcf /root/spec/inp.in")
spec_fs_cmd["soplex"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part5/tasks;taskset -c 0 /root/spec/soplex -s1 -e -m45000 /root/spec/pds-50.mps")
spec_fs_cmd["mcf"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;taskset -c 0 /root/spec/mcf /root/spec/inp.in")
spec_fs_cmd["lbm"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;taskset -c 0 /root/spec/lbm  3000 reference.dat 0 0 /root/spec/100_100_130_ldc.of")
#spec_fs_cmd["soplex"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part5/tasks;taskset -c 0 /root/spec/soplex -s1 -e -m45000 /root/spec/pds-50.mps &;/bin/echo $$ > /sys/fs/cgroup/part1/tasks;/root/hrt -m 2048 -i 0 -c 0 -o fifo -I 20")
spec_fs_cmd["gamess"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part7/tasks;taskset -c 2 /root/spec/gamess < /root/spec/cytosine.2.config ")
spec_fs_cmd["namd"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;taskset -c 0 /root/spec/namd --input /root/spec/namd.input")
spec_fs_cmd["h264ref"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;taskset -c 0 /root/spec/h264ref -d /root/spec/foreman_ref_encoder_baseline.cfg")
#spec_fs_cmd["bandwidth1"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part2/tasks;/root/bandwidth -m 2048 -t 0  -c 1")
#spec_fs_cmd["bandwidth2"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part3/tasks;/root/bandwidth -m 2048 -t 0  -c 2")
#spec_fs_cmd["bandwidth3"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part4/tasks;/root/bandwidth -m 2048 -t 0  -c 3")
spec_fs_cmd["liblinear"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;taskset -c 0 /root/liblinear-tlarge /root/kdda")
spec_fs_cmd["bandwidth1"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;/root/bandwidth -m 4096 -a write -t 0  -c 0&")
spec_fs_cmd["bandwidth2"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part3/tasks;/root/bandwidth -m 2048 -a write -t 0  -c 2")
spec_fs_cmd["bandwidth3"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part4/tasks;/root/bandwidth -m 2048 -a write -t 0  -c 3")
spec_fs_cmd["bandwidth4"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part8/tasks;/root/bandwidth -m 2048 -a write -t 0  -c 3")
spec_fs_cmd["bwrite"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;/root/bandwidth -m 4096 -a write -t 0  -c 0")
#spec_fs_cmd["bzip2"] = fsBench("/root/latency -m 2048 -i 5")
#spec_fs_cmd["bzip2"] = fsBench("/home/prathap/WorkSpace/gem5/util/m5/cpu2006/cpu2006/benchspec/CPU2006/401.bzip2/exe/bzip2_base.gcc43-64bit /home/prathap/WorkSpace/gem5/util/m5/cpu2006/cpu2006/benchspec/CPU2006/401.bzip2/exe/dryer.jpg 280")
spec_fs_cmd["gcc"] = fsBench("/cpu2006/bin/spec.gcc_base.x86-gcc /cpu2006/403.gcc/data/ref/input/200.i -o gcc_403.gcc_200.s")
spec_fs_cmd["bwaves"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;taskset -c 0 /root/spec/bwaves /root/spec/bwaves.in")
spec_fs_cmd["zeusmp"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;taskset -c 0 /root/spec/zeusmp")
spec_fs_cmd["gromacs"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;taskset -c 0 /root/spec/gromacs  -silent -deffnm /root/spec/gromacs.tpr -name 0")
spec_fs_cmd["gobmk"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;taskset -c 0 /root/spec/gobmk --quiet --mode gtp <  /root/spec/nngs.tst")
spec_fs_cmd["dealII"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;taskset -c 0 /root/spec/deal 23")
spec_fs_cmd["povray"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;taskset -c 0 /root/spec/povray /root/spec/SPEC-benchmark-ref.ini")
spec_fs_cmd["calculix"] = fsBench("/cpu2006/bin/spec.calculix_base.x86-gcc -i /cpu2006/454.calculix/data/ref/input/hyperviscoplastic")
spec_fs_cmd["sjeng"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;taskset -c 0 /root/spec/sjeng  /root/spec/ref.txt")
spec_fs_cmd["GemsFDTD"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;taskset -c 0 /root/spec/GemsFDTD")
spec_fs_cmd["tonto"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;taskset -c 0 /root/spec/tonto_base")
spec_fs_cmd["wrf"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;taskset -c 0 /root/spec/wrf /root/spec/namelist.input")
spec_fs_cmd["sphinx"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;taskset -c 0 /root/spec/sphinx /root/spec/model/lm/an4/an4.ctl . /root/spec/args.an4")
spec_fs_cmd["xalancbmk"] = fsBench("/cpu2006/bin/spec.Xalan_base.x86-gcc -v /cpu2006/483.xalancbmk/data/ref/input/t5.xml /cpu2006/483.xalancbmk/data/ref/input/xalanc.xsl")
spec_fs_cmd["specrand_i"] = fsBench("/cpu2006/bin/spec.specrand_base.x86-gcc 324342 24239")
spec_fs_cmd["specrand_f"] = fsBench("/cpu2006/bin/spec.specrand_base.x86-gcc 324342 24239")
#solo
spec_fs_cmd["a2time01"] = fsBench("/root/eem.sh a2time01")
spec_fs_cmd["aifftr01"] = fsBench("/root/eem.sh aifftr01")
spec_fs_cmd["aifirf01"] = fsBench("/root/eem.sh aifirf01")
spec_fs_cmd["aiifft01"] = fsBench("/root/eem.sh aiifft01")
spec_fs_cmd["basefp01"] = fsBench("/root/eem.sh basefp01")
spec_fs_cmd["bitmnp01"] = fsBench("/root/eem.sh bitmnp01")
spec_fs_cmd["cacheb01"] = fsBench("/root/eem.sh cacheb01")
spec_fs_cmd["canrdr01"] = fsBench("/root/eem.sh canrdr01")
spec_fs_cmd["idctrn01"] = fsBench("/root/eem.sh idctrn01")
spec_fs_cmd["iirflt01"] = fsBench("/root/eem.sh iirflt01")
spec_fs_cmd["matrix01"] = fsBench("/root/eem.sh matrix01")
spec_fs_cmd["pntrch01"] = fsBench("/root/eem.sh pntrch01")
spec_fs_cmd["puwmod01"] = fsBench("/root/eem.sh puwmod01")
spec_fs_cmd["rspeed01"] = fsBench("/root/eem.sh rspeed01")
spec_fs_cmd["tblook01"] = fsBench("/root/eem.sh tblook01")
spec_fs_cmd["ttsprk01"] = fsBench("/root/eem.sh ttsprk01")
spec_fs_cmd["cjpeg"] = fsBench("/root/eem.sh cjpeg")
spec_fs_cmd["djpeg"] = fsBench("/root/eem.sh djpeg")
spec_fs_cmd["rgbcmy01"] = fsBench("/root/eem.sh rgbcmy01")
spec_fs_cmd["rgbhpg01"] = fsBench("/root/eem.sh rgbhpg01")
spec_fs_cmd["rgbyiq01"] = fsBench("/root/eem.sh rgbyiq01")
spec_fs_cmd["latency"] = fsBench("/root/latency.sh 128 21")
spec_fs_cmd["bwr"] = fsBench("/root/bw.sh 128 101 read")

#Deterministic
spec_fs_cmd["Dlatency"] = fsBench("/root/latency-dt -m 2048 -i 6 -c 0 -o fifo")
spec_fs_cmd["Dlatencyd"] = fsBench("/root/latency-dt -m 2048 -i 6 -c 0 -o fifo -d deterministic")
spec_fs_cmd["Dl-D3bwr"] = fsBench("/root/cr3.sh 2048 read;ls /;/root/latency-dt -m 2048 -i 6 -c 0 -o fifo")
spec_fs_cmd["Dl-D3bwrd"] = fsBench("/root/cr3.sh 2048 read;/root/latency-dt -m 2048 -i 6 -c 0 -o fifo -d deterministic")
#vision
spec_fs_cmd["disparity"] = fsBench("/root/vision.sh disparity-sqcif")
#spec_fs_cmd["disparity"] = fsBench("/root/vision/disparity-sqcif/disparity /root/vision/disparity-sqcif")
spec_fs_cmd["localization"] = fsBench("/root/vision.sh localization-sqcif")
spec_fs_cmd["mser"] = fsBench("/root/vision.sh mser-sqcif")
spec_fs_cmd["multi_ncut"] = fsBench("/root/vision.sh multi_ncut-sqcif")
spec_fs_cmd["sift"] = fsBench("/root/vision.sh sift-sqcif")
spec_fs_cmd["stitch"] = fsBench("/root/vision.sh stitch-sqcif")
spec_fs_cmd["svm"] = fsBench("/root/vision.sh svm-sqcif")
spec_fs_cmd["texture_synthesis"] = fsBench("/root/vision.sh texture_synthesis-sqcif")
spec_fs_cmd["tracking"] = fsBench("/root/vision.sh tracking-sqcif")


spec_fs_cmd["l-D1bwr"] = fsBench("/root/cr1.sh 4096 read;/root/latency.sh 128 21")
spec_fs_cmd["l-D1bww"] = fsBench("/root/cr1.sh 4096 write;/root/latency.sh 128 21")
spec_fs_cmd["bwr-D1bwr"] = fsBench("/root/cr1.sh 4096 read;/root/bw.sh 128 101 read")
spec_fs_cmd["bwr-L1bwr"] = fsBench("/root/cr1.sh 128 read;/root/bw.sh 128 101 read")
spec_fs_cmd["bwr-D1bww"] = fsBench("/root/cr1.sh 4096 write;/root/bw.sh 128 101 read")
spec_fs_cmd["bwr-L1bww"] = fsBench("/root/cr1.sh 128 write;/root/bw.sh 128 101 read")

spec_fs_cmd["l-D2bwr"] = fsBench("/root/cr2.sh 4096 read;/root/latency.sh 128 21")
spec_fs_cmd["l-D2bww"] = fsBench("/root/cr2.sh 4096 write;/root/latency.sh 128 21")
spec_fs_cmd["bwr-D2bwr"] = fsBench("/root/cr2.sh 4096 read;/root/bw.sh 128 101 read")
spec_fs_cmd["bwr-L2bwr"] = fsBench("/root/cr2.sh 128 read;/root/bw.sh 128 101 read")
spec_fs_cmd["bwr-D2bww"] = fsBench("/root/cr2.sh 4096 write;/root/bw.sh 128 101 read")
spec_fs_cmd["bwr-L2bww"] = fsBench("/root/cr2.sh 128 write;/root/bw.sh 128 101 read")

spec_fs_cmd["l-D3bwr"] = fsBench("/root/cr3.sh 4096 read;/root/latency.sh 128 21")
spec_fs_cmd["l-D3bww"] = fsBench("/root/cr3.sh 4096 write;/root/latency.sh 128 21")
spec_fs_cmd["bwr-D3bwr"] = fsBench("/root/cr3.sh 4096 read;/root/bw.sh 128 101 read")
spec_fs_cmd["bwr-L3bwr"] = fsBench("/root/cr3.sh 128 read;/root/bw.sh 128 101 read")
spec_fs_cmd["bwr-D3bww"] = fsBench("/root/cr3.sh 4096 write;/root/bw.sh 128 101 read")
spec_fs_cmd["bwr-L3bww"] = fsBench("/root/cr3.sh 128 write;/root/bw.sh 128 101 read")
#spec_fs_cmd["nmpc"] = fsBench("/root/nmpc.sh 1000")
spec_fs_cmd["aifftr01-D3bww"] = fsBench("/root/cr3.sh 4096 write;/root/eem.sh aifftr01")
spec_fs_cmd["aiifft01-D3bww"] = fsBench("/root/cr3.sh 4096 write;/root/eem.sh aiifft01")
spec_fs_cmd["cacheb01-D3bww"] = fsBench("/root/cr3.sh 4096 write;/root/eem.sh cacheb01")
spec_fs_cmd["rgbhpg01-D3bww"] = fsBench("/root/cr3.sh 4096 write;ls;/root/eem.sh rgbhpg01")
spec_fs_cmd["rgbyiq01-D3bww"] = fsBench("/root/cr3.sh 4096 write;/root/eem.sh rgbyiq01")
spec_fs_cmd["disparity-D3bww"] = fsBench("/root/cr3.sh 4096 write;/root/vision.sh disparity-sqcif")
spec_fs_cmd["mser-D3bww"] = fsBench("/root/cr3.sh 4096 write;ls;/root/vision.sh mser-sqcif")
spec_fs_cmd["sift-D3bww"] = fsBench("/root/cr3.sh 4096 write;/root/vision.sh sift-sqcif")
spec_fs_cmd["localization-D3bww"] = fsBench("/root/cr3.sh 4096 write;/root/vision.sh localization-sqcif")
spec_fs_cmd["svm-D3bww"] = fsBench("/root/cr3.sh 4096 write;/root/vision.sh svm-sqcif")

spec_fs_cmd["aifftr01-D2bww"] = fsBench("/root/cr2.sh 4096 write;/root/eem.sh aifftr01")
spec_fs_cmd["aiifft01-D2bww"] = fsBench("/root/cr2.sh 4096 write;/root/eem.sh aiifft01")
spec_fs_cmd["cacheb01-D2bww"] = fsBench("/root/cr2.sh 4096 write;/root/eem.sh cacheb01")
spec_fs_cmd["rgbhpg01-D2bww"] = fsBench("/root/cr2.sh 4096 write;ls;/root/eem.sh rgbhpg01")
spec_fs_cmd["rgbyiq01-D2bww"] = fsBench("/root/cr2.sh 4096 write;/root/eem.sh rgbyiq01")
spec_fs_cmd["disparity-D2bww"] = fsBench("/root/cr2.sh 4096 write;/root/vision.sh disparity-sqcif")
spec_fs_cmd["mser-D2bww"] = fsBench("/root/cr2.sh 4096 write;ls;/root/vision.sh mser-sqcif")
spec_fs_cmd["svm-D2bww"] = fsBench("/root/cr2.sh 4096 write;/root/vision.sh svm-sqcif")

spec_fs_cmd["aifftr01-D1bww"] = fsBench("/root/cr1.sh 4096 write;/root/eem.sh aifftr01")
spec_fs_cmd["aiifft01-D1bww"] = fsBench("/root/cr1.sh 4096 write;/root/eem.sh aiifft01")
spec_fs_cmd["cacheb01-D1bww"] = fsBench("/root/cr1.sh 4096 write;/root/eem.sh cacheb01")
spec_fs_cmd["rgbhpg01-D1bww"] = fsBench("/root/cr1.sh 4096 write;ls;/root/eem.sh rgbhpg01")
spec_fs_cmd["rgbyiq01-D1bww"] = fsBench("/root/cr1.sh 4096 write;/root/eem.sh rgbyiq01")
spec_fs_cmd["disparity-D1bww"] = fsBench("/root/cr1.sh 4096 write;/root/vision.sh disparity-sqcif")
spec_fs_cmd["mser-D1bww"] = fsBench("/root/cr1.sh 4096 write;ls;/root/vision.sh mser-sqcif")
spec_fs_cmd["svm-D1bww"] = fsBench("/root/cr1.sh 4096 write;/root/vision.sh svm-sqcif")


spec_fs_cmd["aifftr01-3lbm"] = fsBench("/root/eem.sh aifftr01")
spec_fs_cmd["aiifft01-3lbm"] = fsBench("/root/eem.sh aiifft01")
spec_fs_cmd["cacheb01-3lbm"] = fsBench("/root/eem.sh cacheb01")
spec_fs_cmd["rgbhpg01-3lbm"] = fsBench("/root/eem.sh rgbhpg01")
spec_fs_cmd["rgbyiq01-3lbm"] = fsBench("/root/eem.sh rgbyiq01")
spec_fs_cmd["disparity-3lbm"] = fsBench("/root/vision.sh disparity-sqcif")
spec_fs_cmd["mser-3lbm"] = fsBench("/root/vision.sh mser-sqcif")
spec_fs_cmd["svm-3lbm"] = fsBench("/root/vision.sh svm-sqcif")

spec_fs_cmd["aifftr01-3opp"] = fsBench("/root/eem.sh aifftr01")
spec_fs_cmd["aiifft01-3opp"] = fsBench("/root/eem.sh aiifft01")
spec_fs_cmd["cacheb01-3opp"] = fsBench("/root/eem.sh cacheb01")
spec_fs_cmd["rgbhpg01-3opp"] = fsBench("/root/eem.sh rgbhpg01")
spec_fs_cmd["rgbyiq01-3opp"] = fsBench("/root/eem.sh rgbyiq01")
spec_fs_cmd["disparity-3opp"] = fsBench("/root/vision.sh disparity-sqcif")
spec_fs_cmd["mser-3opp"] = fsBench("/root/vision.sh mser-sqcif")
spec_fs_cmd["svm-3opp"] = fsBench("/root/vision.sh svm-sqcif")
#multi threaded - For renatos experiment
spec_fs_cmd["cohebench"] = fsBench("/root/cohebench -t 0")
spec_fs_cmd["cohebench3"] = fsBench("/root/cohebench -t 3")
spec_fs_cmd["cohebench-o"] = fsBench("/root/cohebench -t 0 -c outer")
spec_fs_cmd["cohebench3-o"] = fsBench("/root/cohebench -t 3 -c outer")
spec_fs_cmd["bt"] = fsBench("/root/bt -m 32 -c 0 -b 1024")
spec_fs_cmd["bt-64"] = fsBench("/root/bandwidth-test -m 64 -b 1024 -a read -d 0 -c 0")
spec_fs_cmd["bt-128"] = fsBench("/root/bandwidth-test -m 128 -b 1024 -a read -d 0 -c 0")
spec_fs_cmd["bt-256"] = fsBench("/root/bandwidth-test -m 256 -b 1024 -a read -d 0 -c 0")
spec_fs_cmd["bt-512"] = fsBench("/root/bandwidth-test -m 512 -b 1024 -a read -d 0 -c 0")
spec_fs_cmd["bt-1K"] = fsBench("/root/bandwidth-test -m 1024 -b 1024 -a read -d 0 -c 0")
spec_fs_cmd["bt-2K"] = fsBench("/root/bandwidth-test -m 2048 -b 1024 -a read -d 0 -c 0")
spec_fs_cmd["bt-4K"] = fsBench("/root/bandwidth-test -m 4096 -b 1024 -a read -d 0 -c 0")
spec_fs_cmd["bt-8K"] = fsBench("/root/bandwidth-test -m 8192 -b 1024 -a read -d 0 -c 0")
spec_fs_cmd["bt-16K"] = fsBench("/root/bandwidth-test -m 16384 -b 1024 -a read -d 0 -c 0")
spec_fs_cmd["bt-32K"] = fsBench("/root/bandwidth-test -m 32768 -b 1024 -a read -d 0 -c 0")


spec_fs_cmd["bwr-solo-1K"] = fsBench("/root/bandwidth-thread -a read -c 0 -d 0 -i 1000 -m 1 -t 0")
spec_fs_cmd["bwr-solo-2K"] = fsBench("/root/bandwidth-thread -a read -c 0 -d 0 -i 1000 -m 2 -t 0")
spec_fs_cmd["bwr-solo-4K"] = fsBench("/root/bandwidth-thread -a read -c 0 -d 0 -i 1000 -m 4 -t 0")
spec_fs_cmd["bwr-solo-8K"] = fsBench("/root/bandwidth-thread -a read -c 0 -d 0 -i 1000 -m 8 -t 0")
spec_fs_cmd["bwr-solo-16K"] = fsBench("/root/bandwidth-thread -a read -c 0 -d 0 -i 1000 -m 16 -t 0")
spec_fs_cmd["bwr-solo-32K"] = fsBench("/root/bandwidth-thread -a read -c 0 -d 0 -i 1000 -m 32 -t 0")
spec_fs_cmd["bwr-solo-2048K"] = fsBench("/root/bandwidth-thread -a read -c 0 -d 0 -i 1000 -m 2048 -t 0")

spec_fs_cmd["bwr-1T-1K"] = fsBench("/root/bandwidth-thread -a read -c 0 -d 1 -i 1000 -m 1 -t 0")
spec_fs_cmd["bwr-1T-2K"] = fsBench("/root/bandwidth-thread -a read -c 0 -d 1 -i 1000 -m 2 -t 0")
spec_fs_cmd["bwr-1T-4K"] = fsBench("/root/bandwidth-thread -a read -c 0 -d 1 -i 1000 -m 4 -t 0")
spec_fs_cmd["bwr-1T-8K"] = fsBench("/root/bandwidth-thread -a read -c 0 -d 1 -i 1000 -m 8 -t 0")
spec_fs_cmd["bwr-1T-16K"] = fsBench("/root/bandwidth-thread -a read -c 0 -d 1 -i 1000 -m 16 -t 0")
spec_fs_cmd["bwr-1T-32K"] = fsBench("/root/bandwidth-thread -a read -c 0 -d 1 -i 1000 -m 32 -t 0")

spec_fs_cmd["bwr-2T-1K"] = fsBench("/root/bandwidth-thread -a read -c 0 -d 2 -i 1000 -m 1 -t 0")
spec_fs_cmd["bwr-2T-2K"] = fsBench("/root/bandwidth-thread -a read -c 0 -d 2 -i 1000 -m 2 -t 0")
spec_fs_cmd["bwr-2T-4K"] = fsBench("/root/bandwidth-thread -a read -c 0 -d 2 -i 1000 -m 4 -t 0")
spec_fs_cmd["bwr-2T-8K"] = fsBench("/root/bandwidth-thread -a read -c 0 -d 2 -i 1000 -m 8 -t 0")
spec_fs_cmd["bwr-2T-16K"] = fsBench("/root/bandwidth-thread -a read -c 0 -d 2 -i 1000 -m 16 -t 0")
spec_fs_cmd["bwr-2T-32K"] = fsBench("/root/bandwidth-thread -a read -c 0 -d 2 -i 1000 -m 32 -t 0")

spec_fs_cmd["bwr-3T-1K"] = fsBench("/root/bandwidth-thread -a read -c 0 -d 3 -i 1000 -m 1 -t 0")
spec_fs_cmd["bwr-3T-2K"] = fsBench("/root/bandwidth-thread -a read -c 0 -d 3 -i 1000 -m 2 -t 0")
spec_fs_cmd["bwr-3T-4K"] = fsBench("/root/bandwidth-thread -a read -c 0 -d 3 -i 1000 -m 4 -t 0")
spec_fs_cmd["bwr-3T-8K"] = fsBench("/root/bandwidth-thread -a read -c 0 -d 3 -i 1000 -m 8 -t 0")
spec_fs_cmd["bwr-3T-16K"] = fsBench("/root/bandwidth-thread -a read -c 0 -d 3 -i 1000 -m 16 -t 0")
spec_fs_cmd["bwr-3T-32K"] = fsBench("/root/bandwidth-thread -a read -c 0 -d 3 -i 1000 -m 32 -t 0")

spec_fs_cmd["bwr-1K"] = fsBench("/root/bw.sh 1 1000 read")
spec_fs_cmd["bwr-2K"] = fsBench("/root/bw.sh 2 1000 read")
spec_fs_cmd["bwr-4K"] = fsBench("/root/bw.sh 4 1000 read")
spec_fs_cmd["bwr-8K"] = fsBench("/root/bw.sh 8 1000 read")
spec_fs_cmd["bwr-16K"] = fsBench("/root/bw.sh 16 1000 read")
spec_fs_cmd["bwr-32K"] = fsBench("/root/bw.sh 32 1000 read")

spec_fs_cmd["bwr-1P-1K"] = fsBench("/root/cr1.sh 1 write;/root/bw.sh 1 1000 read")
spec_fs_cmd["bwr-1P-2K"] = fsBench("/root/cr1.sh 2 write;/root/bw.sh 2 1000 read")
spec_fs_cmd["bwr-1P-4K"] = fsBench("/root/cr1.sh 4 write;/root/bw.sh 4 1000 read")
spec_fs_cmd["bwr-1P-8K"] = fsBench("/root/cr1.sh 8 write;/root/bw.sh 8 1000 read")
spec_fs_cmd["bwr-1P-16K"] = fsBench("/root/cr1.sh 16 write;/root/bw.sh 16 1000 read")
spec_fs_cmd["bwr-1P-32K"] = fsBench("/root/cr1.sh 32 write;/root/bw.sh 32 1000 read")

spec_fs_cmd["bwr-2P-1K"] = fsBench("/root/cr2.sh 1 write;/root/bw.sh 1 1000 read")
spec_fs_cmd["bwr-2P-2K"] = fsBench("/root/cr2.sh 2 write;/root/bw.sh 2 1000 read")
spec_fs_cmd["bwr-2P-4K"] = fsBench("/root/cr2.sh 4 write;/root/bw.sh 4 1000 read")
spec_fs_cmd["bwr-2P-8K"] = fsBench("/root/cr2.sh 8 write;/root/bw.sh 8 1000 read")
spec_fs_cmd["bwr-2P-16K"] = fsBench("/root/cr2.sh 16 write;/root/bw.sh 16 1000 read")
spec_fs_cmd["bwr-2P-32K"] = fsBench("/root/cr2.sh 32 write;/root/bw.sh 32 1000 read")

spec_fs_cmd["bwr-3P-1K"] = fsBench("/root/cr3.sh 1 write;/root/bw.sh 1 1000 read")
spec_fs_cmd["bwr-3P-2K"] = fsBench("/root/cr3.sh 2 write;/root/bw.sh 2 1000 read")
spec_fs_cmd["bwr-3P-4K"] = fsBench("/root/cr3.sh 4 write;/root/bw.sh 4 1000 read")
spec_fs_cmd["bwr-3P-8K"] = fsBench("/root/cr3.sh 8 write;/root/bw.sh 8 1000 read")
spec_fs_cmd["bwr-3P-16K"] = fsBench("/root/cr3.sh 16 write;/root/bw.sh 16 1000 read")
spec_fs_cmd["bwr-3P-32K"] = fsBench("/root/cr3.sh 32 write;/root/bw.sh 32 1000 read")
#periodic
spec_fs_cmd["aifftr01P"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;taskset -c 0 /root/eembc_periodic/aifftr01 -o -r 7 -c 0 -p 20 &")
spec_fs_cmd["aiifft01P"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;taskset -c 0 /root/eembc_periodic/aiifft01 -o -r 7 -c 0 -p 20 &")
spec_fs_cmd["cacheb01P"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;taskset -c 0 /root/eembc_periodic/cacheb01 -o -r 7 -c 0 -p 20 &")
spec_fs_cmd["rgbhpg01P"] = fsBench("/bin/echo $$ > /sys/fs/cgroup/part1/tasks;taskset -c 0 /root/eembc_periodic/rgbhpg01")
spec_fs_cmd["rt4"] = fsBench("/root/eem_p.sh")
spec_fs_cmd["rt4-cr4"] = fsBench("/root/cr4-part.sh 4096 write;/root/eem_p.sh")

spec_fs_cmd["hrt"] = fsBench("/root/hrtS.sh 2048 7")
spec_fs_cmd["hrt4-cr4"] = fsBench("/root/cr4.sh 2048 write;/root/hrt.sh 2048 7")
spec_fs_cmd["hrt4-cr0"] = fsBench("/root/hrt.sh 2048 7")

spec_fs_cmd["nmpc"] = fsBench("/root/nmpc.sh 6")
spec_fs_cmd["nmpc4-cr4"] = fsBench("/root/cr4.sh 2048 write;/root/nmpc4.sh 6")
spec_fs_cmd["nmpc4"] = fsBench("/root/nmpc4.sh 6")

spec_fs_cmd["eembc"] = fsBench("/root/eembc.sh 7")
spec_fs_cmd["eembc4-cr4"] = fsBench("/root/cr4.sh 2048 write;/root/eembc4.sh 7")
spec_fs_cmd["eembc4"] = fsBench("/root/eembc4.sh 7")

spec_fs_cmd["aiifft01-iter"] = fsBench("/root/eem-iter.sh aiifft01 3")
spec_fs_cmd["mg"] = fsBench("/root/budget.sh 1000 2000 5000 10000;/root/m5 enablememguard 1;/root/bwmg.sh 2048 1 read")
spec_fs_cmd["mg-solo"] = fsBench("/root/m5 setmembudget 0 1000;/root/m5 enablememguard 1;/bin/echo $$ > /sys/fs/cgroup/part1/tasks;/root/bandwidth -c 0 -t 0 -m 2048 -a read -i 10&")
#1RT
spec_fs_cmd["a2time01-1RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh a2time01")
spec_fs_cmd["aifftr01-1RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh aifftr01")
spec_fs_cmd["aifirf01-1RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh aifirf01")
spec_fs_cmd["aiifft01-1RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh aiifft01")
spec_fs_cmd["basefp01-1RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh basefp01")
spec_fs_cmd["bitmnp01-1RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh bitmnp01")
spec_fs_cmd["cacheb01-1RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh cacheb01")
spec_fs_cmd["canrdr01-1RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh canrdr01")
spec_fs_cmd["idctrn01-1RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh idctrn01")
spec_fs_cmd["iirflt01-1RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh iirflt01")
spec_fs_cmd["matrix01-1RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh matrix01")
spec_fs_cmd["pntrch01-1RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh pntrch01")
spec_fs_cmd["puwmod01-1RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh puwmod01")
spec_fs_cmd["rspeed01-1RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh rspeed01")
spec_fs_cmd["tblook01-1RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh tblook01")
spec_fs_cmd["ttsprk01-1RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh ttsprk01")

spec_fs_cmd["nmpc-1RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/nmpc.sh 1000")

#2RT
spec_fs_cmd["a2time01-2RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh a2time01")
spec_fs_cmd["aifftr01-2RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh aifftr01")
spec_fs_cmd["aifirf01-2RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh aifirf01")
spec_fs_cmd["aiifft01-2RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh aiifft01")
spec_fs_cmd["basefp01-2RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh basefp01")
spec_fs_cmd["bitmnp01-2RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh bitmnp01")
spec_fs_cmd["cacheb01-2RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh cacheb01")
spec_fs_cmd["canrdr01-2RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh canrdr01")
spec_fs_cmd["idctrn01-2RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh idctrn01")
spec_fs_cmd["iirflt01-2RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh iirflt01")
spec_fs_cmd["matrix01-2RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh matrix01")
spec_fs_cmd["pntrch01-2RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh pntrch01")
spec_fs_cmd["puwmod01-2RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh puwmod01")
spec_fs_cmd["rspeed01-2RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh rspeed01")
spec_fs_cmd["tblook01-2RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh tblook01")
spec_fs_cmd["ttsprk01-2RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh ttsprk01")

spec_fs_cmd["nmpc-2RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/nmpc.sh 1000")

#3RT
spec_fs_cmd["a2time01-3RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh a2time01")
spec_fs_cmd["aifftr01-3RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh aifftr01")
spec_fs_cmd["aifirf01-3RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh aifirf01")
spec_fs_cmd["aiifft01-3RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh aiifft01")
spec_fs_cmd["basefp01-3RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh basefp01")
spec_fs_cmd["bitmnp01-3RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh bitmnp01")
spec_fs_cmd["cacheb01-3RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh cacheb01")
spec_fs_cmd["canrdr01-3RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh canrdr01")
spec_fs_cmd["idctrn01-3RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh idctrn01")
spec_fs_cmd["iirflt01-3RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh iirflt01")
spec_fs_cmd["matrix01-3RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh matrix01")
spec_fs_cmd["pntrch01-3RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh pntrch01")
spec_fs_cmd["puwmod01-3RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh puwmod01")
spec_fs_cmd["rspeed01-3RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh rspeed01")
spec_fs_cmd["tblook01-3RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh tblook01")
spec_fs_cmd["ttsprk01-3RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/eem.sh ttsprk01")

spec_fs_cmd["nmpc-3RT"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth write;/root/nmpc.sh 1000")
#2RT
#spec_fs_cmd["a2time01-2RT"] = fsBench("/root/crM.sh a2time01 bandwidth bandwidth;/root/eem.sh a2time01")
#spec_fs_cmd["aifftr01-2RT"] = fsBench("/root/crM.sh aifftr01 bandwidth bandwidth;/root/eem.sh aifftr01")
#spec_fs_cmd["aifirf01-2RT"] = fsBench("/root/crM.sh aifirf01 bandwidth bandwidth;/root/eem.sh aifirf01")
#spec_fs_cmd["aiifft01-2RT"] = fsBench("/root/crM.sh aiifft01 bandwidth bandwidth;/root/eem.sh aiifft01")
#spec_fs_cmd["basefp01-2RT"] = fsBench("/root/crM.sh basefp01 bandwidth bandwidth;/root/eem.sh basefp01")
#spec_fs_cmd["bitmnp01-2RT"] = fsBench("/root/crM.sh bitmnp01 bandwidth bandwidth;/root/eem.sh bitmnp01")
#spec_fs_cmd["cacheb01-2RT"] = fsBench("/root/crM.sh cacheb01 bandwidth bandwidth;/root/eem.sh cacheb01")
#spec_fs_cmd["canrdr01-2RT"] = fsBench("/root/crM.sh canrdr01 bandwidth bandwidth;/root/eem.sh canrdr01")
#spec_fs_cmd["idctrn01-2RT"] = fsBench("/root/crM.sh idctrn01 bandwidth bandwidth;/root/eem.sh idctrn01")
#spec_fs_cmd["iirflt01-2RT"] = fsBench("/root/crM.sh iirflt01 bandwidth bandwidth;/root/eem.sh iirflt01")
#spec_fs_cmd["matrix01-2RT"] = fsBench("/root/crM.sh matrix01 bandwidth bandwidth;/root/eem.sh matrix01")
#spec_fs_cmd["pntrch01-2RT"] = fsBench("/root/crM.sh pntrch01 bandwidth bandwidth;/root/eem.sh pntrch01")
#spec_fs_cmd["puwmod01-2RT"] = fsBench("/root/crM.sh puwmod01 bandwidth bandwidth;/root/eem.sh puwmod01")
#spec_fs_cmd["rspeed01-2RT"] = fsBench("/root/crM.sh rspeed01 bandwidth bandwidth;/root/eem.sh rspeed01")
#spec_fs_cmd["tblook01-2RT"] = fsBench("/root/crM.sh tblook01 bandwidth bandwidth;/root/eem.sh tblook01")
#spec_fs_cmd["ttsprk01-2RT"] = fsBench("/root/crM.sh ttsprk01 bandwidth bandwidth;/root/eem.sh ttsprk01")

#spec_fs_cmd["nmpc-2RT"] = fsBench("/root/crM.sh nmpc bandwidth bandwidth;/root/nmpc.sh 1000")
#3RT
#spec_fs_cmd["a2time01-3RT"] = fsBench("/root/crM.sh a2time01 a2time01 bandwidth;/root/eem.sh a2time01")
#spec_fs_cmd["aifftr01-3RT"] = fsBench("/root/crM.sh aifftr01 aifftr01 bandwidth;/root/eem.sh aifftr01")
#spec_fs_cmd["aifirf01-3RT"] = fsBench("/root/crM.sh aifirf01 aifirf01 bandwidth;/root/eem.sh aifirf01")
#spec_fs_cmd["aiifft01-3RT"] = fsBench("/root/crM.sh aiifft01 aiifft01 bandwidth;/root/eem.sh aiifft01")
#spec_fs_cmd["basefp01-3RT"] = fsBench("/root/crM.sh basefp01 basefp01 bandwidth;/root/eem.sh basefp01")
#spec_fs_cmd["bitmnp01-3RT"] = fsBench("/root/crM.sh bitmnp01 bitmnp01 bandwidth;/root/eem.sh bitmnp01")
#spec_fs_cmd["cacheb01-3RT"] = fsBench("/root/crM.sh cacheb01 cacheb01 bandwidth;/root/eem.sh cacheb01")
#spec_fs_cmd["canrdr01-3RT"] = fsBench("/root/crM.sh canrdr01 canrdr01 bandwidth;/root/eem.sh canrdr01")
#spec_fs_cmd["idctrn01-3RT"] = fsBench("/root/crM.sh idctrn01 idctrn01 bandwidth;/root/eem.sh idctrn01")
#spec_fs_cmd["iirflt01-3RT"] = fsBench("/root/crM.sh iirflt01 iirflt01 bandwidth;/root/eem.sh iirflt01")
#spec_fs_cmd["matrix01-3RT"] = fsBench("/root/crM.sh matrix01 matrix01 bandwidth;/root/eem.sh matrix01")
#spec_fs_cmd["pntrch01-3RT"] = fsBench("/root/crM.sh pntrch01 pntrch01 bandwidth;/root/eem.sh pntrch01")
#spec_fs_cmd["puwmod01-3RT"] = fsBench("/root/crM.sh puwmod01 puwmod01 bandwidth;/root/eem.sh puwmod01")
#spec_fs_cmd["rspeed01-3RT"] = fsBench("/root/crM.sh rspeed01 rspeed01 bandwidth;/root/eem.sh rspeed01")
#spec_fs_cmd["tblook01-3RT"] = fsBench("/root/crM.sh tblook01 tblook01 bandwidth;/root/eem.sh tblook01")
#spec_fs_cmd["ttsprk01-3RT"] = fsBench("/root/crM.sh ttsprk01 ttsprk01 bandwidth;/root/eem.sh ttsprk01")

#spec_fs_cmd["nmpc-3RT"] = fsBench("/root/crM.sh nmpc nmpc bandwidth;/root/nmpc.sh 1000")
#spec_fs_cmd["aifirf01"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth;/root/eem.sh aifirf01")
#spec_fs_cmd["aifftr01"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth;/root/eem.sh aifftr01")
#spec_fs_cmd["aiifft01"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth;/root/eem.sh aiifft01.exe")
#spec_fs_cmd["cacheb01"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth;/root/eem.sh cacheb01")
#spec_fs_cmd["matrix01"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth;/root/eem.sh matrix01")
#spec_fs_cmd["pntrch01"] = fsBench("/root/crM.sh bandwidth bandwidth bandwidth;/root/eem.sh pntrch01")
#
# Benchmarks to test pyterm -- These program output test at the beginning
#

# test1 -- hmmer
spec_fs_cmd["test1"] = fsBench("/cpu2006/bin/spec.hmmer_base.x86-gcc --fixed 0 --mean 500 --num 500000 --sd 350 --seed 0 /cpu2006/456.hmmer/data/ref/input/retro.hmm")
# test2 -- gobmk
spec_fs_cmd["test2"] = fsBench("/cpu2006/bin/spec.gobmk_base.x86-gcc --mode gtp < /cpu2006/445.gobmk/data/ref/input/nngs.tst")
# test3 -- mcf
spec_fs_cmd["test3"] = fsBench("/cpu2006/bin/spec.mcf_base.x86-gcc /cpu2006/429.mcf/data/ref/input/inp.in")
# test4 -- libquantum
spec_fs_cmd["test4"] = fsBench("/cpu2006/bin/spec.libquantum_base.x86-gcc 1397 8")

# Set the benchmark's working directory
#spec_fs_cmd["bwaves"].setCwd("/cpu2006/410.bwaves/data/ref/input")
#spec_fs_cmd["gamess"].setCwd("/cpu2006/416.gamess/data/ref/input")
#spec_fs_cmd["zeusmp"].setCwd("/cpu2006/434.zeusmp/data/ref/input")
#spec_fs_cmd["gobmk"].setCwd("/cpu2006/445.gobmk/data/all/input")
#spec_fs_cmd["povray"].setCwd("/cpu2006/453.povray/data/all/input")
#spec_fs_cmd["GemsFDTD"].setCwd("/cpu2006/459.GemsFDTD/data/ref/input")
#spec_fs_cmd["h264ref"].setCwd("/cpu2006/464.h264ref/data/all/input")
#spec_fs_cmd["tonto"].setCwd("/cpu2006/465.tonto/data/ref/input")
#spec_fs_cmd["omnetpp"].setCwd("/cpu2006/471.omnetpp/data/ref/input")
#spec_fs_cmd["astar"].setCwd("/cpu2006/473.astar/data/ref/input")
#spec_fs_cmd["wrf"].setCwd("/cpu2006/481.wrf/data/all/input")
#spec_fs_cmd["sphinx"].setCwd("/cpu2006/482.sphinx3/data/all/input")

spec_fs_cmd["test2"].setCwd("/cpu2006/445.gobmk/data/all/input")

# Set simpoint start
#spec_fs_cmd["astar"].setSimpoint(400000000)
spec_fs_cmd["astar"].setSimpoint(10000)
spec_fs_cmd["bwaves"].setSimpoint(7800000000)
spec_fs_cmd["GemsFDTD"].setSimpoint(6100000000)
spec_fs_cmd["gobmk"].setSimpoint(20000)
spec_fs_cmd["lbm"].setSimpoint(3000000000)
spec_fs_cmd["lbm1"].setSimpoint(3000000000)
spec_fs_cmd["lbm2"].setSimpoint(3000000000)
spec_fs_cmd["lbm3"].setSimpoint(3000000000)
spec_fs_cmd["omnetpp1"].setSimpoint(9000000000)
spec_fs_cmd["omnetpp2"].setSimpoint(9000000000)
spec_fs_cmd["omnetpp3"].setSimpoint(9000000000)
spec_fs_cmd["leslie3d"].setSimpoint(61200000000)
#spec_fs_cmd["libquantum"].setSimpoint(29100000000)
spec_fs_cmd["libquantum"].setSimpoint(9400000000)
spec_fs_cmd["libquantum1"].setSimpoint(9400000000)
spec_fs_cmd["libquantum2"].setSimpoint(9400000000)
spec_fs_cmd["libquantum3"].setSimpoint(9400000000)
spec_fs_cmd["libquantum4"].setSimpoint(9400000000)
spec_fs_cmd["disparity"].setSimpoint(90000000000)
spec_fs_cmd["liblinear"].setSimpoint(1900000000)
spec_fs_cmd["soplex"].setSimpoint(1800000000)
spec_fs_cmd["mcf"].setSimpoint(3400000000)
spec_fs_cmd["mcf1"].setSimpoint(3400000000)
spec_fs_cmd["mcf2"].setSimpoint(3400000000)
spec_fs_cmd["mcf3"].setSimpoint(3400000000)
spec_fs_cmd["mcf4"].setSimpoint(3400000000)
spec_fs_cmd["milc"].setSimpoint(7800000000)
spec_fs_cmd["zeusmp"].setSimpoint(24100000000)

# Low memory usage benchmarks
#spec_fs_cmd["bzip2"].setSimpoint(4000000000)
spec_fs_cmd["bzip2"].setSimpoint(2800000000)
spec_fs_cmd["bwrite"].setSimpoint(100000000)
spec_fs_cmd["bandwidth1"].setSimpoint(100000)
spec_fs_cmd["bandwidth2"].setSimpoint(100000)
spec_fs_cmd["bandwidth3"].setSimpoint(100000)
spec_fs_cmd["bandwidth4"].setSimpoint(10000)
spec_fs_cmd["hrt1"].setSimpoint(0)
spec_fs_cmd["hrt2"].setSimpoint(1000)
spec_fs_cmd["hrt3"].setSimpoint(1000)
spec_fs_cmd["hrt4"].setSimpoint(1000)
spec_fs_cmd["latency"].setSimpoint(0)
spec_fs_cmd["cactusADM"].setSimpoint(200000000)
spec_fs_cmd["gamess"].setSimpoint(200000000)
spec_fs_cmd["gcc"].setSimpoint(600000000)
spec_fs_cmd["gromacs"].setSimpoint(3000000000)
spec_fs_cmd["dealII"].setSimpoint(1100000000)
#spec_fs_cmd["wrf"].setSimpoint(3000000000)
spec_fs_cmd["wrf"].setSimpoint(100000000)
spec_fs_cmd["h264ref"].setSimpoint(5400000000)
spec_fs_cmd["hmmer"].setSimpoint(300000000)
spec_fs_cmd["namd"].setSimpoint(800000000)
spec_fs_cmd["omnetpp"].setSimpoint(9000000000)
#spec_fs_cmd["povray"].setSimpoint(4000000000)
spec_fs_cmd["povray"].setSimpoint(100000000)
spec_fs_cmd["sjeng"].setSimpoint(1400000000)
spec_fs_cmd["sphinx"].setSimpoint(20000)
spec_fs_cmd["tonto"].setSimpoint(600000000)

# Tests -- start in a short time for testing
spec_fs_cmd["test1"].setSimpoint(30000000)
spec_fs_cmd["test2"].setSimpoint(20000000)
spec_fs_cmd["test3"].setSimpoint(10000000)
spec_fs_cmd["test4"].setSimpoint(40000000)


def getSPECFSBench(bench):
    if not bench in spec_fs_cmd:
        print "Benchmark %s not found!" % bench
        sys.exit(1)

    spec_fs_cmd[bench].setName(bench)

    return spec_fs_cmd[bench]


def getSPECCmd(bench, cpu):
    #return "cd %s; taskset -c %d %s &\n" % (bench.cwd, cpu, bench.cmd)
    #return "cd %s; %s &\n" % (bench.cwd, bench.cmd)
    return "cd %s; %s \n" % ("/root", spec_fs_cmd[bench].cmd)

