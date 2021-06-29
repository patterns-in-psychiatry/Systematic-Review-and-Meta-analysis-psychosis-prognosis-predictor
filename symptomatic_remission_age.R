library(readxl)
library(grid)
library(meta)
data_age <- read_excel("H:\\PhD\\Systematic Review\\Remissie\\leeftijd\\r_age.xlsx")
age <- metacont(as.numeric(data_age$rem_n), as.numeric(data_age$rem_mean), as.numeric(data_age$rem_SD), as.numeric(data_age$nrem_n), as.numeric(data_age$nrem_mean), as.numeric(data_age$nrem_SD), sm = 'SMD', studlab = data_age$study)
age[['FEP']] <- data_age$FEP
age[['FU']] <- data_age$FU
forest(age, comb.fixed = FALSE, just = 'left', lab.e.attach.to.col = 'n.e', lab.e = 'remission', lab.c.attach.to.col = 'n.c', lab.c = 'no remission', leftcols = c('studlab','FEP', 'FU', 'n.e', 'mean.e', 'sd.e','n.c', 'mean.c', 'sd.c'), leftlabs = c('study', 'FEP', 'FU', 'n','mean age', 'sd age', 'n', 'mean age', 'sd age'), rightlabs = c('cohens d', '95%CI','weight'), digits.sd = 2, smlab = 'cohens d')
