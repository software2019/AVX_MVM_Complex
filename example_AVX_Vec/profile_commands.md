
## Launching vtune  
**Use test queue**  

```bash
sbatch --reservation=mrahman_12 -q test submit_HPC_parallel.mpi 

module list 
module avail
/opt/ohpc/pub/oneAPI
source setvars.sh
``` 

## =======Run MPI+OpenMP Application=======  

**Analysing performance-snapshot**  

**Analysing Hotspots**  
```bash
mpirun -n 8 vtune -collect hotspots -result-dir r001hs ./speed_test_diracoperator -i ./speed_test_diracoperator.in 0 0 0
``` 

**Analysing Threading**
```bash
mpirun -n 8 vtune -collect threading -result-dir r001hs ./speed_test_diracoperator -i ./speed_test_diracoperator.in 0 0 0
``` 

## Hybrid code analysis intel sample code  

**Step 1: To build the application, do the following:**  
A. Clone the application GitHub* repository to your local system:
   $ git clone https://github.com/CardiacDemo/Cardiac_demo.git

B. Set up the Intel C++ compiler environment:
   $ source /opt/ohpc/pub/intel/compilers_and_libraries_2019.5.281/linux/bin/compilervars.sh intel64

C. In the root level of the sample package, create a build directory and change to that directory:
   $ mkdir build
   $ cd build

D. Build the application using the following command:
   $ mpiicpc ../heart_demo.cpp ../luo_rudy_1991.cpp ../rcm.cpp ../mesh.cpp -g -o heart_demo -O3 -std=c++11 -qopenmp -parallel-source-info=2


**Step 2: Run Application with Various Configurations**  
A. Set up the environment for the Intel MPI Library:
   source /opt/ohpc/pub/intel/compilers_and_libraries_2019.5.281/linux/mpi/intel64/bin/mpivars.sh
B. Create a host file that lists all of the cluster nodes involved:
       node1
       node2
       ...
       node8

C. Save the file as hosts.txt in the build directory.

D. Run the application with the following combinations in teh build directory
```bash
Run 1:
export OMP_NUM_THREADS=16
mpirun -n 16 ./heart_demo -m ../mesh_mid -s ../setup_mid.txt -t 50

Run 2:
export OMP_NUM_THREADS=8
mpirun -n 32 ./heart_demo -m ../mesh_mid -s ../setup_mid.txt -t 50

Run 3:
export OMP_NUM_THREADS=4
mpirun -n 64 ./heart_demo -m ../mesh_mid -s ../setup_mid.txt -t 50

Run 4:
export OMP_NUM_THREADS=2
mpirun -n 128 ./heart_demo -m ../mesh_mid -s ../setup_mid.txt -t 50

Run 5:
export OMP_NUM_THREADS=1
mpirun -n 256 ./heart_demo -m ../mesh_mid -s ../setup_mid.txt -t 50


mpirun -n 128 ./speed_test_diracoperator -i ./speed_test_diracoperator4.in 0

time ./run_ppn128_omp1.sh
``` 

Fair Comparison: Benchmark   
16 MPI 16 threads :t =2; x = 2; y = 2; z =2   
32 MPI 8 threads : t =4; x = 2; y = 2; z =2   
64 MPI 4 threads : t =4; x = 4; y = 2; z =2   
128 MPI 2 threads : t =4; x = 4; y = 4; z =2   
256 MPI 1 thread : t =4; x = 4; y = 4; z =4   
 

## Analyze a Hybrid MPI/OpenMP application:  

## STEP 1: APS (APPLICATION PERFORMANCE SNAPSHOT)   
### =============APS Workflow============  
**Set up environment:** 
```bash 
   source /opt/ohpc/pub/oneAPI/setvars.sh
```
**Run Application: Just add the “aps” switch to the mpirun launch line**  
```bash
   export OMP_NUM_THREADS=4
   export APS_STAT_LEVEL=5
   mpirun -n 8 aps ./speed_test_diracoperator -i ./speed_test_diracoperator.in 2
```
**Generate a summary report in html format**  
   aps --report <result_folder>
   or
```bash
   aps --report /home/mrahman/HiRep-1/TestProgram/DiracOperator/aps_result_20211013
``` 
**Open html file x2goclient**  
```bash 
   xdg-open aps_report_20211007_204649.html
   or
   firefox aps_report_20211007_204649.html
```
**to generate a graphic representation of rank to rank communicaiton, use:**  
   aps --report -x --format=html <result name>

**Generate CL reports with detailed MPI statistics for a result_folder**  
```bash
    aps-report --<option> <result_folder>
    aps-report [keys][options] <result>
    example: aps-report --mpi-time-per-rank <result>

aps --report -x /home/mrahman/HiRep-1/TestProgram/DiracOperator/aps_result_20211013
``` 

## STEP 2: TRACE ANALYZER AND COLLECTOR   

Intel Trace Analyzer and Collector: Identify Communication Issues with Intel® Trace Analyzer and Collector. Before tracing your applications, set up the   environment variables for compilers, Intel® MPI Library, and Intel® Trace Analyzer and Collector.   
   
   1. **Set up environment variables**  
   ```bash
   source /opt/ohpc/pub/oneAPI/setvars.sh
   ```

   2. **Collect MPI Calls/data**  
   ```bash
   export VT_PCTRACE=5
   export OMP_NUM_THREADS=4
   mpirun -genv VT_LOGFILE_FORMAT=SINGLESTF -trace -n 8 ./speed_test_diracoperator -i ./speed_test_diracoperator.in 2
   ``` 

   3. **Analyse the Collected Data**  
   *Open file file in xterm  
   ```bash
   traceanalyzer ./speed_test_diracoperator.single.stf &
   ```

## STEP 3: RUN VTUNE PROFILER   
============MPI Analysis with the VTune Profiler============
  1. **set up environment variables:**  
  ```bash
     cd /opt/ohpc/pub/oneAPI
     source setvars.sh
  ```
  2. **Run MPI with VTune**  
     #A typical MPI job uses the following syntax:
     ```bash
         mpirun [options] <program> [<args>] 
     ```
     #VTune Profiler is launched using <program> and your application is launched using the VTune Profiler command arguments. As a result, launching an MPI application using VTune Profiler uses the following syntax:

     ```bash
         mpirun [options] vtune [options] <program> [<args>]
     ```

     #Typical syntax: 
     ```bash
         mpirun -n <n> -l vtune -quiet -collect <analysis_type> -trace-mpi -result-dir <my_result> my_app [<my_app_options>]
     ```
       1. **=====Collecting Hotspots=====**  
        ```bash
         export OMP_NUM_THREADS=4
         mpirun -n 8 vtune -collect hotspots -result-dir r001hs ./speed_test_diracoperator -i ./speed_test_diracoperator.in 2

         OR 
         export OMP_NUM_THREADS=4
         mpirun -n 8 vtune -c hotspots -r r_hs_dpi -- ./speed_test_diracoperator -i ./speed_test_diracoperator.in 2

         OR
         Using absolute path of the result directory
         mpirun -n 8 vtune -c hotspots -r /home/mrahman/my_result/r_hs_dpi -- ./speed_test_diracoperator -i ./speed_test_diracoperator.in 2

         **Enable Stack Sampling**
         vtune -collect hotspots -knob sampling-mode=hw -knob enable-stack-collection=true -knob stack-size=2048 <application>
        ```

      2. **=====Collecting HPC Performance=====**    

      VTune: recommended by Michael from Intel   
        **Collect HPC Performance Characterization**   
        ```bash
         mpirun -n 4 vtune -c hpc-performance -r r_hpc_dphi -- ./speed_test_diracoperator -i ./speed_test_diracoperator4.in 2

         or with GTool – focusing on a single rank or node …
         mpirun  -n 8  -gtool “vtune -c hpc-performance -r r_hpc:all” ./speed_test_diracoperator -i ./speed_test_diracoperator.in 2
        ```
         where all can be replaced with a rank, a subset of ranks etc.   

      3. **=====Collecting Memory Access=====**  
      ```bash
      export OMP_NUM_THREADS=4
      mpirun  -n 8 vtune -c memory-access -r ./r_ma_dphi -- ./speed_test_diracoperator -i ./speed_test_diracoperator.in 2

      vtune -collect-with runsa a.out
      UNC_CMT_L3_CACHE_OCCUPANCY    L3 Cache Occupancy
      ```
      4. **=====Collecting Memory Access with Objects=====**  
      ```
      export OMP_NUM_THREADS=4
      mpirun  -n 8 vtune -c memory-access -knob analyze-mem-objects=true -r ./r_mao_dphi -- ./speed_test_diracoperator -i ./speed_test_diracoperator.in 2
      ```
      5. **=====Collecting Threading=====**  
      ```bash
      mpirun -n 8 vtune -collect threading -knob analyze-openmp=true -result-dir /home/mrahman/my_result/r001th -- ./speed_test_diracoperator -i ./speed_test_diracoperator.in 0 0 2

      **Enable Stack Sampling**
      vtune -collect threading -knob sampling-mode=hw -knob enable-stack-collection=true -knob stack-size=2048 -result-dir /home/mrahman/my_result/r001th -- ./speed_test_diracoperator -i ./speed_test_diracoperator.in 0 0 2
      ``` 

The mpirun options include:  
<n> is the number of MPI processes to be run.  
-l option of the mpiexec/mpirun tools marks stdout lines with an MPI rank. This option is recommended, but not required.   

**The vtune options include:** 
-quiet / -q option suppresses the diagnostic output like progress messages. This option is recommended, but not required.  
-collect / -c <analysis type> is an analysis type you run with the VTune Profiler. To view a list of available analysis types, use VTune Profiler-help   collect command.    
-trace-mpi adds a per-node suffix to the result directory name and adds a rank number to a process name in the result. This option is required for non-Intel MPI launchers.   
-result-dir / -r <my_result> specifies the path to a directory in which the analysis results are stored.   
If a MPI application is launched on multiple nodes, VTune Profiler creates a number of result directories per compute node in the current directory, named as my_result.<hostname1>, my_result.<hostname2>, ... my_result.<hostnameN>, encapsulating the data for all the ranks running on the node in the same directory. For example, the Hotspots analysis (hardware event-based sampling mode) run on 4 nodes collects data on each compute node:   

**============ Examples of Run the VTune collections =============**  
```bash
$ vtune -c hotspots -r r_hs_mod -- ./stream_mod.x
$ vtune -c hotspots -knob sampling-mode=hw-r r_hshw_mod -- ./stream_mod.x
$ vtune -c hpc-performance -r r_hpc_mod -- ./stream_mod.x
$ vtune -c memory-access -r ./r_ma_mod -- ./stream_mod.x
$ vtune -c memory-access -knob analyze-mem-objects=true -r ./r_mao_mod -- ./stream_mod.x
```
**=============Running VTune in single/multiple node(s)============**  

**STEP 4: OPEN THE RESULT FILE FROM VTUNE gui**  
select Open > Result... from the menu and browse to the result file. 


## ===========OTHER COMMANDS==========  
### Copying from remote to local  
```bash
scp  mrahman@141.163.13.58:/home/mrahman/HiRep-1/TestProgram/DiracOperator/speed_test_diracoperator.prot/  /Users/rahman/Desktop/HiRep_Report 
```  
## Vtune on mac  
cd /opt/intel/oneapi 
sudo vtune-gui

## VTune on FOSERES  
```bash
/opt/ohpc/pub/oneAPI/vtune/latest
```
## Application Path:   
```bash
/home/mrahman/HiRep-1/TestProgram/DiracOperator/speed_test_diracoperator
export OMP_NUM_THREADS=4
mpirun -n 8 ./speed_test_diracoperator -i ./speed_test_diracoperator.in 2
```  

### General Hybrid Program Compiling and Running   
```bash
mpiicc hybrid-hello.c -o hybrid -g -O3 -qopenmp -tcollect
export OMP_NUM_THREADS=4
export VT_PCTRACE=5
mpirun -n 4 -genv VT_LOGFILE_FORMAT=SINGLESTF -trace ./hybrid
```  

### Copying a directory contents to another directory   
```bash
cp -a /source/. /dest/
cp -a /opt/ohpc/pub/oneAPI/itac/latest/slib/. //home/mrahman/my_test

export LD_LIBRARY_PATH=/opt/ohpc/pub/oneAPI/itac/latest/slib:/home/mrahman/my_test
mpiicc VT_sample.c -L$VT_SLIB_DIR -L. -L$PAPI_ROOT -lVTsample -lVT -lpapi $VT_ADD_LIBS -o ctest

export MV2 CPU BINDING POLICY=hybrid 
export MV2 THREADS PER PROCESS=4

Advice from Itel Michael: 
APS:
export APS_STAT_LEVEL=5
mpirun  -n 8 aps ./speed_test_diracoperator -i ./speed_test_diracoperator.in 2
``` 

**===================================================================================**    
                                 Intel® Inspector
**===================================================================================**   
Command Syntax
The Intel Inspectorinspxe-cl command syntax is:
$ inspxe-cl <-action> [-action-options] [-global-options] [-- application [application options]]

#Example:
$ inspxe-cl -collect ti2 -result-dir ./myResult -- myApp

#HiRep Command Example: Commanline and GUI
Step 1: Set up environment variables
  source /opt/ohpc/pub/oneAPI/setvars.sh

Step 2: Run Application and Collect Data
mpirun -n 4 inspxe-cl -collect ti3 -result-dir /home/mrahman/my_result/Inspector/r_dphi_00ti2 ./speed_test_diracoperator -i ./speed_test_diracoperator4.in -o out_sf_measure_2501_3500 2

Step 3: Review the Summary of detected problems in each of the inspxe-cl.xml files.

Step 4: If one of the summaries contains anything other than 0 new problems, you can enter inspxe-gui to launch the result in the standalone GUI so you can view details and have easy access to your code editor and other tools. You can also use the report action to generate a report.

===================================================================================
                                 Intel® Advisor
===================================================================================

**MPI Application**
Step 1: Survey Your Target Application
==> Run Survey analysis on all ranks of a 4-rank MPI application:
mpirun -n 4 "advisor --collect=survey –-project-dir=./myProject" ./myAPP
==> HiRep Command:
mpirun -n 1 advisor -collect=survey --project-dir=/home/mrahman/my_result/Advisor -- ./speed_test_diracoperator -i ./speed_test_diracoperator.in -o out_sf_measure_2501_3503

Step 2: Collect Trip Counts and FLOP Data and Review the Results
After running the Survey analysis, you can view the Survey data collected for your application or collect additional information about trip counts and FLOP. To run the Trip Counts and FLOP analysis only for the rank 0 of the WRF application, execute the following command:
mpirun -n 1 advisor --collect=tripcounts --flop --project-dir=/home/mrahman/my_result/Advisor -- ./speed_test_diracoperator -i ./speed_test_diracoperator.in -o out_sf_measure_2501_3503

Step 3: Collect dependencies data for all loops
mpirun -n 1 advisor --collect=dependencies --select="loop-height=2" --project-dir=./advi_results ./speed_test_diracoperator -i ./speed_test_diracoperator.in -o out_sf_measure_2501_3503

#Generate a survey report txt file to get loop IDs:
mpirun -n 1 advisor --report=survey --project-dir=./advi_results_Dependence ./speed_test_diracoperator -i ./speed_test_diracoperator.in -o out_sf_measure_2501_3503

#Collect dependencies of specific loop=> bulk loop whose ID: 17
mpirun -n 1 advisor --collect=dependencies --mark-up-list=17 --project-dir=./advi_results_Dependence ./speed_test_diracoperator -i ./speed_test_diracoperator.in -o out_sf_measure_2501_3503

Step 4: Collect Memory Access Patterns
mpirun -n 1 advisor --collect=map --mark-up-list=5,10,12 --project-dir=/home/mrahman/my_result/Advisor -- ./speed_test_diracoperator -i ./speed_test_diracoperator.in -o out_sf_measure_2501_3503 