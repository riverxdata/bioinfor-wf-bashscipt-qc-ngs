#!/bin/bash
set -euo pipefail

# init pixi
eval "$(pixi shell-hook --manifest-path analysis)"

# prepare outout
mkdir -p $outdir

# run fastqc
fastqc $fastq_dir/*fq -o $outdir

# run multiqc
multiqc $outdir -o $outdir --force
