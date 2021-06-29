library(readxl)
library(grid)
library(meta)
data_neg <- read_excel("H:\\PhD\\Systematic Review\\Remissie\\negatieve symptomen\\r_neg2.xlsx")
neg_byvar_FEP <- metacont(as.numeric(data_neg$r_n), as.numeric(data_neg$r_mean), as.numeric(data_neg$r_SD), as.numeric(data_neg$nr_n), as.numeric(data_neg$nr_mean), as.numeric(data_neg$nr_SD), sm = 'SMD', byvar = data_neg$FEP, studlab = data_neg$study)
neg_byvar_FEP[['FEP']] <- data_neg$FEP
neg_byvar_FEP[['FU']] <- data_neg$FU
forest(neg_byvar_FEP, comb.fixed = FALSE, just = 'center', lab.e = 'remission', lab.c = 'no remission', leftcols = c('studlab','FEP', 'FU', 'n.e', 'mean.e', 'sd.e','n.c', 'mean.c', 'sd.c'), leftlabs = c('study','FEP', 'FU','n','mean neg', 'sd neg', 'n', 'mean neg', 'sd neg'),digits.sd = 2, smlab = 'cohens d')