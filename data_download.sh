#Download the gtex data
wget https://storage.googleapis.com/gtex_analysis_v8/rna_seq_data/GTEx_Analysis_2017-06-05_v8_RNASeQCv1.1.9_gene_tpm.gct.gz

#Unzip the data
gunzip GTEx_Analysis_2017-06-05_v8_RNASeQCv1.1.9_gene_tpm.gct.gz

#Skip initial lines and saving to TSV file
tail -n+3 GTEx_Analysis_2017-06-05_v8_RNASeQCv1.1.9_gene_tpm.gct > GTEx_Analysis_2017-06-05_v8_RNASeQCv1.1.9_gene_tpm.tsv

#Download HIPPIE dataset for PPIs
wget http://cbdm-01.zdv.uni-mainz.de/~mschaefer/hippie/hippie_current.txt

#Get sample and tissue mapping 
wget https://storage.googleapis.com/gtex_analysis_v8/annotations/GTEx_Analysis_v8_Annotations_SampleAttributesDS.txt

#Disease-gene relationship data
wget https://ars.els-cdn.com/content/image/1-s2.0-S2405471217302909-mmc3.xlsx

#Download and unzip protein atlas
wget https://www.proteinatlas.org/download/normal_tissue.tsv.zip
unzip normal_tissue.tsv.zip
rm normal_tissue.tsv.zip




#Download mice validation datasets

# [('Heart','114'),('Breast','3463'),('Muscle','0080000'),('Lung','1579'),('Ovary','229'),('Testis','48')]
#just repace 114 with relevant number

wget http://www.informatics.jax.org//disease/genes/report.xlsx?doid=DOID:114

