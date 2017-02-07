#genome-wide scan 
#for chrom in `seq 1 22` X Y M
#do
    #python scan_motifs.py --pwm_dir=pwm --reference hg19/hg19.genome.fa --out_prefix hocomocov10_hg19_1kb_S_by_M  --chrom_sizes hg19/hg19.chrom.sizes --background_freqs hg19_background_freqs.txt --chrom chr$chrom --num_hits_per_motif 1 &
    #python scan_motifs.py --pwm_dir=pwm --reference hg19/hg19.genome.fa --out_prefix hocomocov10_hg19_1kb_S_by_M  --chrom_sizes hg19/hg19.chrom.sizes --background_freqs hg19_background_freqs.txt --chrom chr$chrom --num_hits_per_motif 1 --p_val 0.0001 &
    #python scan_motifs.py --pwm_dir=pwm --reference hg19/hg19.genome.fa --out_prefix hocomocov10_hg19_1kb_S_by_M  --chrom_sizes hg19/hg19.chrom.sizes --background_freqs hg19_background_freqs.txt --chrom chr$chrom --num_hits_per_motif 3 &
    #python scan_motifs.py --pwm_dir=pwm --reference hg19/hg19.genome.fa --out_prefix hocomocov10_hg19_1kb_S_by_M  --chrom_sizes hg19/hg19.chrom.sizes --background_freqs hg19_background_freqs.txt --chrom chr$chrom --num_hits_per_motif 3 --p_val 0.0001 
#done

#scan for a specific bed file
#python scan_motifs.py --pwm_dir=pwm --reference hg19/hg19.genome.fa --out_prefix gecco_scan --chrom_sizes hg19/hg19.chrom.sizes --background_freqs hg19_background_freqs.txt --num_hits_per_motif 3 --p_val 0.0001 --positions_bed gecco.sampled.test.txt

#python scan_motifs.py --pwm_dir=pwm --reference hg19/hg19.genome.fa --out_prefix gecco_scan_train --chrom_sizes hg19/hg19.chrom.sizes --background_freqs hg19_background_freqs.txt --num_hits_per_motif 3 --p_val 0.0001 --positions_bed gecco.sampled.train.txt
python scan_motifs.py --pwm_dir=pwm --reference hg19/hg19.genome.fa --out_prefix gecco_scan_validate --chrom_sizes hg19/hg19.chrom.sizes --background_freqs hg19_background_freqs.txt --num_hits_per_motif 3 --p_val 0.0001 --positions_bed gecco.sampled.validate.txt

