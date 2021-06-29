library(readxl)
library(grid)
library(meta)
data_neg <- read_excel("H:\\PhD\\Systematic Review\\Remissie\\negatieve symptomen\\r_neg2.xlsx")
neg <- metacont(as.numeric(data_neg$r_n), as.numeric(data_neg$r_mean), as.numeric(data_neg$r_SD), as.numeric(data_neg$nr_n), as.numeric(data_neg$nr_mean), as.numeric(data_neg$nr_SD), sm = 'SMD', studlab = data_neg$study)
neg[['FEP']] <- data_neg$FEP
neg[['FU']] <- data_neg$FU
forest(neg, comb.fixed = FALSE, just = 'left', lab.e = 'remission', lab.e.attach.to.col = 'n.e', lab.c = 'no remission', lab.c.attach.to.col = 'n.c', leftcols = c('studlab','FEP', 'FU', 'n.e', 'mean.e', 'sd.e','n.c', 'mean.c', 'sd.c'), leftlabs = c('study', 'FEP', 'FU', 'n','mean neg', 'sd neg', 'n', 'mean neg', 'sd neg'), rightlabs = c('cohens d', '95%CI','weight'), digits.sd = 2, smlab = 'cohens d')