#!/bin/bash

VERSPEC='fuji'
VER='3'
WT='default_angular_bitwise'
OUTDIR='/global/cfs/cdirs/desi/survey/catalogs/SV3/LSS/fuji/LSScats/3/xi/'


srun -N 1  python xirunpc.py --tracer $1 --outdir $OUTDIR --verspec $VERSPEC --version $VER --weight_type $WT &
srun -N 1  python xirunpc.py --tracer $1 --outdir $OUTDIR --verspec $VERSPEC --version $VER --weight_type $WT --bin_type log &
wait