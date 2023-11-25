

# Building a Project with Ninja Build   


## Step 1: Generating Compiler Options (Using Perl Script tool)         

- Create file called: **write_mkflags.pl**      
- Create the option file called: **MkFlags.ini**   



## Step 2: Compile the Code (Using Ninja Build tool)    

- 


## Command Used:   
```bash
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -cflags "-qopenmp -Wall -Wshadow -O3 -march=core-avx2 -mtune=core-avx2"
```
