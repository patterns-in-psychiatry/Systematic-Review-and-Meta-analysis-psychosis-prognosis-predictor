library(readxl)
library(grid)
library(meta)
data_age <- read_excel("H:\\PhD\\Systematic Review\\Remissie\\leeftijd\\r_age.xlsx")
age_byvar_FEP <- metacont(as.numeric(data_age$rem_n), as.numeric(data_age$rem_mean), as.numeric(data_age$rem_SD), as.numeric(data_age$nrem_n), as.numeric(data_age$nrem_mean), as.numeric(data_age$nrem_SD), sm = "SMD", byvar = data_age$FEP, studlab = data_age$study)
age_byvar_FEP[['FEP']] <- data_age$FEP
age_byvar_FEP[['FU']] <- data_age$FU
forest(age_byvar_FEP, comb.fixed = FALSE, just = 'center', lab.e = 'remission', lab.c = 'no remission', leftcols = c('studlab','FEP', 'n.e', 'mean.e', 'sd.e','n.c', 'mean.c', 'sd.c'), leftlabs = c('study', 'FEP','n','mean age', 'sd age', 'n', 'mean age', 'sd age'), digits.sd = 2, smlab = 'cohens d')
grid.text("age association to remission", .4, 0.9, gp=gpar(cex=2))