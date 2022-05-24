# get the version information (demo developed with humann v0.8.1)
humann --version

# run humann on the demo input file
humann --input $INPUT_FOLDER/demo.fastq --output $OUTPUT_FOLDER --verbose --threads $THREADS --gap-fill on

# run with sam input file
humann --input $INPUT_FOLDER/demo.sam --output $OUTPUT_FOLDER --threads $THREADS --gap-fill on

# run with m8 input file
humann --input $INPUT_FOLDER/demo.m8 --output $OUTPUT_FOLDER --threads $THREADS --gap-fill on

# run humann on the demo input file with bypass translated search
humann --input $INPUT_FOLDER/demo.fastq --output $OUTPUT_FOLDER --verbose --threads $THREADS --gap-fill on --bypass-translated-search

# rename the table
humann_rename_table --input $OUTPUT_FOLDER/demo_genefamilies.tsv --output $OUTPUT_FOLDER/demo_genefamilies-names.tsv --names uniref90

# renorm the gene families file
humann_renorm_table --input $OUTPUT_FOLDER/demo_genefamilies.tsv --output $OUTPUT_FOLDER/demo_genefamilies-cpm.tsv --units cpm --update-snames

# regroup uniref90 to ec
humann_regroup_table --input $OUTPUT_FOLDER/demo_genefamilies-cpm.tsv --output $OUTPUT_FOLDER/level4ec-cpm.tsv --groups uniref90_level4ec

# rename the regrouped file
humann_rename_table --input $OUTPUT_FOLDER/level4ec-cpm.tsv --output $OUTPUT_FOLDER/level4ec-cpm-names.tsv --names ec

# run with sub-sampled input files (running with multiple samples section)
humann -i $INPUT_FOLDER/763577454-SRS014459-Stool.fasta -o $OUTPUT_FOLDER/763577454 --threads $THREADS
humann -i $INPUT_FOLDER/763577454-SRS014464-Anterior_nares.fasta -o $OUTPUT_FOLDER/763577454 --threads $THREADS
humann -i $INPUT_FOLDER/763577454-SRS014470-Tongue_dorsum.fasta -o $OUTPUT_FOLDER/763577454 --threads $THREADS
humann -i $INPUT_FOLDER/763577454-SRS014472-Buccal_mucosa.fasta -o $OUTPUT_FOLDER/763577454 --threads $THREADS
humann -i $INPUT_FOLDER/763577454-SRS014476-Supragingival_plaque.fasta -o $OUTPUT_FOLDER/763577454 --threads $THREADS
humann -i $INPUT_FOLDER/763577454-SRS014494-Posterior_fornix.fasta -o $OUTPUT_FOLDER/763577454 --threads $THREADS

# join tables
humann_join_tables -i $OUTPUT_FOLDER/763577454 -o $OUTPUT_FOLDER/763577454_genefamilies.tsv --file_name genefamilies

# renorm table
humann_renorm_table -i $OUTPUT_FOLDER/763577454_genefamilies.tsv -o $OUTPUT_FOLDER/763577454_genefamilies_cpm.tsv --units cpm

# associate and visualize results
humann_associate --input $INPUT_FOLDER/hmp_pathabund.pcl --last-metadatum STSite --focal-metadatum STSite --focal-type categorical --output $OUTPUT_FOLDER/stats.txt

humann_barplot --input $INPUT_FOLDER/hmp_pathabund.pcl --focal-feature METSYN-PWY --focal-metadatum STSite --last-metadatum STSite --output $OUTPUT_FOLDER/plot1.png
humann_barplot --sort sum --input $INPUT_FOLDER/hmp_pathabund.pcl --focal-feature METSYN-PWY --focal-metadatum STSite --last-metadatum STSite --output $OUTPUT_FOLDER/plot2.png
humann_barplot --sort sum metadata --input $INPUT_FOLDER/hmp_pathabund.pcl --focal-feature METSYN-PWY --focal-metadatum STSite --last-metadatum STSite --output $OUTPUT_FOLDER/plot3.png
humann_barplot --sort sum --input $INPUT_FOLDER/hmp_pathabund.pcl --focal-feature COA-PWY --focal-metadatum STSite --last-metadatum STSite --output $OUTPUT_FOLDER/plot4.png
humann_barplot --sort similarity --top-strata 12 --scaling normalize --input $INPUT_FOLDER/hmp_pathabund.pcl --focal-feature COA-PWY --focal-metadatum STSite --last-metadatum STSite --output $OUTPUT_FOLDER/plot5.png

