#!/bin/bash
set -euo pipefail

# init pixi
eval "$(pixi shell-hook)"

# prepare outout
mkdir -p $outdir

# run fastqc
fastqc $fastqc_dir/*fq -o $outdir

# run multiqc
multiqc $outdir -o $outdir --force
