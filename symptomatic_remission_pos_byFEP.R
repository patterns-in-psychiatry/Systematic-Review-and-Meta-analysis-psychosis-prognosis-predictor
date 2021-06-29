library(readxl)
library(grid)
library(meta)
data_pos <- read_excel("H:\\PhD\\Systematic Review\\Remissie\\positieve symptomen\\r_pos2.xlsx")
pos_byvar_FEP <-metacont(as.numeric(data_pos$r_n), as.numeric(data_pos$r_mean), as.numeric(data_pos$r_SD), as.numeric(data_pos$nr_n), as.numeric(data_pos$nr_mean), as.numeric(data_pos$nr_SD), sm = 'SMD', byvar = data_pos$FEP, studlab = data_pos$study)
pos_byvar_FEP[['FEP']] <- data_pos$FEP
pos_byvar_FEP[['FU']] <- data_pos$FU
forest(pos_byvar_FEP, comb.fixed = FALSE, just = 'center', lab.e = 'remission', lab.c = 'no remission', leftcols = c('studlab','FEP', 'FU', 'n.e', 'mean.e', 'sd.e','n.c', 'mean.c', 'sd.c'), leftlabs = c('study','FEP', 'FU','n','mean pos', 'sd pos', 'n', 'mean pos', 'sd pos'), digits.sd = 2, smlab = 'cohens d')