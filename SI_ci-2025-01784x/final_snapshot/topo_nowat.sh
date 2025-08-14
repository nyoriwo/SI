#!/bin/bash

for i in $(seq 42.0 -1.0 0.0)
do



cpptraj <<EOF
parm /work/sirin/windows/1spacing/dib_proto_mem.prmtop
trajin /work/sirin/windows/1spacing/dist_${i}/all_Prod_dib_proto_mem_50ns_skip_${i}.nc lastframe
strip :WAT outprefix nowat
trajout Dib_p_win_${i}.pdb
go
exit
EOF


((i++))

done
