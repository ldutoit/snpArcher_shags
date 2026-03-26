#!/bin/bash
#SBATCH --account=uoo02831
#SBATCH --cpus-per-task=2
#SBATCH --mem=4G
#SBATCH --time=3-00:00:00
#SBATCH --job-name=snakemake_controller
module load Miniforge3
eval "$(mamba shell hook --shell bash)"
mamba activate /nesi/nobackup/uoo00116/conda/envs/snparcher
snakemake --unlock
snakemake \
  --jobs 50 \
  --rerun-triggers mtime \
  --profile workflow-profiles/default/ \
  --rerun-incomplete \
  --retries 2
