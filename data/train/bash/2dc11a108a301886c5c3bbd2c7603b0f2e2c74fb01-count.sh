sample=Double-KO_biorep1_immortP5
htseq-count -f bam -s reverse ${sample}.bam Mus_musculus.GRCm38.73.gtf > ${sample}.count
sample=Double-KO_biorep2_immortP5
htseq-count -f bam -s reverse ${sample}.bam Mus_musculus.GRCm38.73.gtf > ${sample}.count
sample=ENGase-KO_biorep1_immortP5
htseq-count -f bam -s reverse ${sample}.bam Mus_musculus.GRCm38.73.gtf > ${sample}.count
sample=ENGase-KO_biorep2_immortP5
htseq-count -f bam -s reverse ${sample}.bam Mus_musculus.GRCm38.73.gtf > ${sample}.count
sample=NGLY1-KO_biorep1_immortP5
htseq-count -f bam -s reverse ${sample}.bam Mus_musculus.GRCm38.73.gtf > ${sample}.count
sample=NGLY1-KO_biorep2_immortP5
htseq-count -f bam -s reverse ${sample}.bam Mus_musculus.GRCm38.73.gtf > ${sample}.count
sample=WT_biorep1_immortP5
htseq-count -f bam -s reverse ${sample}.bam Mus_musculus.GRCm38.73.gtf > ${sample}.count
sample=WT_biorep2_immortP5
htseq-count -f bam -s reverse ${sample}.bam Mus_musculus.GRCm38.73.gtf > ${sample}.count
sample=WT_biorep3_immortP5
htseq-count -f bam -s reverse ${sample}.bam Mus_musculus.GRCm38.73.gtf > ${sample}.count
