## filtering.md

The last little bit of filtering after snpArcher. 

```
vcftools --gzvcf results/ena_PRJEB60539_sequence.fasta/test_clean_snps.vcf.gz --minDP 2 --max-missing 0.8 --recode
```
## Catching depth and missingness

```
vcftools --vcf out.recode.vcf --depth
vcftools --vcf out.recode.vcf --missing-indv
````
renaming
```
mv out.recode.vcf shags.recode.vcf
```

A backup of this file currently exist at: ~/nesi/project/uoo00116/shags.recode.vcf
