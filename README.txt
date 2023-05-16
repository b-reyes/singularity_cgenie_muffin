# Building the Singularity container

```
singularity build cgenie_muffin.sif singularity_cgenie_muffin.def 
```

# Using cgenie.muffin from a Slurm script

1. Modify all Slurm directives inside the script submit_muffin.sh.

2. Submit the slurm script using:

   sbatch submit_muffin.sh


# Using cgenie.muffin in an interactive session

1. Start an interactive session

2. From the terminal load singularity: 
   
   ml singularity/3.7.4

3. Change to the cgenie_muffin directory. If you just copied the example directory 
   using "cp -r /curc/sw/containers/examples/cgenie_muffin .", then you can do: 
  
   cd ./cgenie_muffin

4. Start an interactive singularity session using cgenie_muffin container: 
 
   singularity shell $CURC_CONTAINER_DIR/cgenie_muffin.sif

5. Within the container set the environmental variable CGENIE_MUFFIN_LOCATION
   this should point to the "cegenie_muffin" path. Since we are in "./cgenie_muffin"
   (based on step 4) this can be done as follows: 

   export CGENIE_MUFFIN_LOCATION=$PWD

6. Now, go to the genie-main directory: 

   cd ./cgenie.muffin/genie-main/


7. To run the test "testbiogem" do the following:

   make cleanall
   make testbiogem


8. To run the muffin Earth system model:

   make cleanall
   ./runmuffin.sh cgenie.eb_go_gs_ac_bg.worbe2.BASE LABS LAB_0.EXAMPLE 10

