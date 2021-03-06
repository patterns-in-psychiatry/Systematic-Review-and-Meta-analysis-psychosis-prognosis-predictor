These scripts are used in a meta-analysis [1] of the association between symptomatic remission (according to RSWG criteria) and the variables sex, age, positive and negative symptoms. The output of the scripts includes a forest plot to summarize information of the included studies. Each script uses an Excel file as input with the following format:

- Rows: each row contains the information of 1 study

- Columns present in all input files: study, FU (duration of follow-up), FEP (first episode psychosis yes/no)

- Additional columns for variable sex: rem_n_male (number of males in remission at follow-up), rem_n (number of all patients in remission at follow-up), nrem_n_male (number of males not in remission at follow-up), nrem_n (number of all patients in remission at follow-up)

- Additional columns for variable age: rem_mean (mean age at baseline of patients in remission at follow-up), rem_SD (SD of mean age at baseline of patients in remission at follow-up), rem_n (number of all patients in remission at follow-up), nrem_mean (mean age at baseline of patients not in remission at follow-up), nrem_SD (SD of mean age at baseline of patients not in remission at follow-up), nrem_n (number of all patients not in remission at follow-up)

- Additional columns for variable positive symptoms: r_mean (mean PANSS positive score at baseline of patients in remission at follow-up), r_SD (SD of mean PANSS positive score at baseline of patients in remission at follow-up), r_n (number of all patients in remission at follow-up), nr_mean (mean PANSS positive score at baseline of patients not in remission at follow-up), nr_SD (SD of mean PANSS positive score at baseline of patients not in remission at follow-up), nr_n (number of all patients not in remission at follow-up)

- Additional columns for variable negative symptoms: r_mean (mean PANSS negative score at baseline of patients in remission at follow-up), r_SD (SD of mean PANSS negative score at baseline of patients in remission at follow-up), r_n (number of all patients in remission at follow-up), nr_mean (mean PANSS negative score at baseline of patients not in remission at follow-up), nr_SD (SD of mean PANSS negative score at baseline of patients not in remission at follow-up), nr_n (number of all patients not in remission at follow-up)

For each investigated variable (sex, age, positive symptoms, negative symptoms) a second script is provided to stratify the results in the forest plot by studies including first episode psychosis patients only (FEP yes) and studies that included no or not only first episode psychosis patients (FEP no).

[1] van Dee, V., Schnack H., Cahn W.. Title + ???submitted for publication (2021)??? 

