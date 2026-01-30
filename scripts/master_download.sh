# Master file for the download of the data 

source config.env
bash download-data.sh ${datadir} ${resultsdir}
Rscript download-pan-cancer-clinical.r ${datadir} ${resultsdir}