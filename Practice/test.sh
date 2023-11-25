#!/bin/bash

npt=6
NPX=1
NPY=1
NPZ=1
NODES=2

for np in $(seq 0 0); do
    echo "hello before"
    (((((npt * NPX * NPY * NPZ) / 2) * 2) != npt * NPX * NPY * NPZ)) && continue
    (((((npt * NPX * NPY * NPZ) / NODES) * NODES) != npt * NPX * NPY * NPZ)) && continue
    ((npt * NPX * NPY * NPZ < NODES)) && continue
    echo "hello"
done


rm -rf ${NODES}_NODE
dir=$(mkdir -p ${NODES}_NODE)
echo $dir

