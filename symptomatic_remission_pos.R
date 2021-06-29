library(readxl)
library(meta)
data_pos <- read_excel("H:\\PhD\\Systematic Review\\Remissie\\positieve symptomen\\r_pos2.xlsx")
pos <- metacont(as.numeric(data_pos$r_n), as.numeric(data_pos$r_mean), as.numeric(data_pos$r_SD), as.numeric(data_pos$nr_n), as.numeric(data_pos$nr_mean), as.numeric(data_pos$nr_SD), sm = 'SMD', studlab = data_pos$study)
pos[['FEP']] <- data_pos$FEP
pos[['FU']] <- data_pos$FU
forest(pos, comb.fixed = FALSE, just = 'left', lab.e.attach.to.col = 'n.e', lab.e = 'remission', lab.c.attach.to.col = 'n.c', lab.c = 'no remission', leftcols = c('studlab','FEP', 'FU', 'n.e', 'mean.e', 'sd.e','n.c', 'mean.c', 'sd.c'), leftlabs = c('study', 'FEP', 'FU', 'n','mean pos', 'sd pos', 'n', 'mean pos', 'SD pos'), rightlabs = c('cohens d', '95%CI','weight'), digits.sd = 2, smlab = 'cohens d')
