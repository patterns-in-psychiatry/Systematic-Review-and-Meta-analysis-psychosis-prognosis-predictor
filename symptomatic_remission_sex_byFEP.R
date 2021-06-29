library(readxl)
library(grid)
library(meta)
data_sex <- read_excel("H:\\PhD\\Systematic Review\\Remissie\\geslacht\\rsex2.xlsx")
sex_byvar_FEP <- metabin(as.numeric(data_sex$rem_n_male), as.numeric(data_sex$rem_n), as.numeric(data_sex$nrem_n_male), as.numeric(data_sex$nrem_n), sm = 'OR', byvar = data_sex$FEP, studlab = data_sex$study)
sex_byvar_FEP[['FEP']] <- data_sex$FEP
sex_byvar_FEP[['FU']] <- data_sex$FU
forest(sex_byvar_FEP, comb.fixed = FALSE, just = 'left', lab.e = 'remission', lab.c = 'no remission', leftcols = c('studlab', 'FEP', 'FU', 'event.e', 'n.e', 'event.c', 'n.c'), leftlabs = c('study', 'FEP', 'FU', 'male', 'total', 'male', 'total'))