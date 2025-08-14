#!/bin/bash

export CUDA_VISIBLE_DEVICES="0"

export prmtop=lid_proto_mem.prmtop
export name=lid_proto_mem_50ns

for i in $(seq 41.0 -1.0 0.0)
do


cd ./dist_${i}

$AMBERHOME/bin/pmemd.cuda -O -i ../06_Prod_cont.in -o 06_Prod_${name}_${i}.out -p ../$prmtop -c 06_Prod_lid_proto_mem_${i}.rst -r 06_Prod_${name}_${i}.rst -x 06_Prod_${name}_${i}.nc -inf 06_Prod_${name}_${i}.mdinfo

cd ../

done
