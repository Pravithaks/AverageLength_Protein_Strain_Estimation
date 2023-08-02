#!/bin/bash

# Step 1: Download the protein sequences file
wget https://ftp.ncbi.nlm.nih.gov/genomes/archive/old_refseq/Bacteria/Escherichia_coli_K_12_substr__MG1655_uid57779/NC_000913.faa

# Step 2: Count the number of sequences and total number of amino acids
num_sequences=$(grep -c ">" NC_000913.faa)
total_amino_acids=$(grep -v ">" NC_000913.faa | tr -d '\n' | wc -c)

# Step 3: Calculate the average length
average_length=$(echo "scale=2; $total_amino_acids / $num_sequences" | bc)

# Step 4: Display the results
echo "Number of sequences: $num_sequences"
echo "Total number of amino acids: $total_amino_acids"
echo "Average length of proteins: $average_length"
