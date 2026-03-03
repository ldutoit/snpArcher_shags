#!/bin/sh
module load Mamba
eval "$(mamba shell hook --shell bash)"
mamba activate /nesi/nobackup/uoo00116/conda/envs/snparcher
module load snakemake/7.32.3-foss-2023a-Python-3.11.6
snakemake -n --profile workflow-profiles/default/
