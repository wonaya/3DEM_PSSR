######### START CUSTOM INSTALL SCRIPT ############
WORKDIR=${workingDirectory}
modelf=${model}
size=${size}

module load TACC
module load tacc-singularity/3.7.2 
module load python3
echo "singularity pull docker://jawon/pssr:0.0.0"
singularity pull docker://jawon/pssr:0.0.0
echo "singularity exec --cleanenv --nv pssr_0.0.0.sif /usr/local/bin/entrypoint.sh python /data/inference.py $WORKDIR $modelf $size"
singularity exec --cleanenv --nv pssr_0.0.0.sif /usr/local/bin/entrypoint.sh python /data/inference.py $WORKDIR $modelf $size
