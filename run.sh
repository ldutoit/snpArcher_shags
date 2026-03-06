#!/bin/sh
module load Miniforge3
eval "$(mamba shell hook --shell bash)"
mamba activate /nesi/nobackup/uoo00116/conda/envs/snparcher
snakemake -n --profile workflow-profiles/default/
