library(readxl)
library(meta)
my_data <- read_excel("H:\\PhD\\Systematic Review\\Remissie\\geslacht\\rsex2.xlsx")
sex <- metabin(as.numeric(my_data$rem_n_male), as.numeric(my_data$rem_n), as.numeric(my_data$nrem_n_male), as.numeric(my_data$nrem_n), sm = 'OR', studlab = my_data$study)
sex[['FEP']] <- my_data$FEP
sex[['FU']] <- my_data$FU
forest(sex, comb.fixed = FALSE, just = 'left', lab.e = 'remission', lab.c = 'no remission', leftcols = c('studlab', 'FEP', 'FU', 'event.e', 'n.e', 'event.c', 'n.c'), leftlabs = c('study', 'FEP', 'FU', 'male', 'total', 'male', 'total'))

