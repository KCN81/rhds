#########################################################
# Master file for the analysis 
########################################################
cd ~/repo/rhds/scripts

# 1 Provide source information 
source config.env 

# 2 Run the extraction r file 
Rscript extract_data.r ${datadir} ${resultsdir}

# 3 Run the clean clinical data r file 
Rscript clean_clinical.r ${datadir} ${resultsdir}

# 4 Run the predict proteins r file 
Rscript predict_proteins.r ${datadir} ${resultsdir}

# 5 Run the combine r file 
Rscript combine.r ${datadir} ${resultsdir}

# 6 Run the analysis r file 
Rscript analysis.r ${datadir} ${resultsdir}