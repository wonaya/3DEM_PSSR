singularity pull docker://jawon/pssr:0.0.0
singularity exec --nv pssr_0.0.0.sif /usr/local/bin/entrypoint.sh python /data/inference.py real-world_SEM PSSR_for_EM_1024.pkl 1024
