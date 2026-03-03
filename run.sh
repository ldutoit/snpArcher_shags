#!/bin/sh
module load Mamba
eval "$(mamba shell hook --shell bash)"
mamba activate /nesi/nobackup/uoo00116/conda/envs/snparcher
snakemake -n !!  --profile /
