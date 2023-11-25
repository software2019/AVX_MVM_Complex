#!/bin/bash

print_header(){
echo "omp_thrd,Gauge_group,MPI_size,GLB_T,GLB_X,GLB_Y,GLB_Z,LOC_T,LOC_X,LOC_Y,LOC_Z,algb_kernel,geom_type,RLXD,SITE_FLOP,SITE_BYTE,Dirc_Data_Mov,reps,data_in_kb,msec,GFLOPS,BAND,Job_Output"
}


while getopts 'n:j:Hh' opt; do
    case "$opt" in
        n)
            outputfile="$OPTARG"
            ;;

        j)
            jobname="$OPTARG"
            ;;

        H) 
            print_header
            exit
            ;;

        ?|h)
            echo "Usage: $(basename $0) [-f < output filename>] [-j <jobreport filename>] [-H] [-h]"
            exit 1
            ;;
    esac
done
shift "$(($OPTIND -1))"

[ -z "$outputfilename" ] && exit 1
[ -z "$jobname" ] && exit 1

