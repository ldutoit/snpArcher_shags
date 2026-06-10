## filtering.md

The last little bit of filtering after snpArcher. 

```
vcftools --gzvcf results/ena_PRJEB60539_sequence.fasta/test_clean_snps.vcf.gz --minDP 2 --max-missing 0.8 --recode
```
