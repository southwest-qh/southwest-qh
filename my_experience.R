library(ggplot2)
## Pharmaceutical Experience
language <- c('SAS', 'SAS', 'SAS', 'SAS', 'R')
tasks <- c('Data Validation', 'Table/Listings/Figures', 
           'Analysis (ANOVA, Mixed Models, Survival Analysis)', 'Simulation', 
           'New Techniques Implementation')
percent_time_spent <- c(0.3, 0.4, 0.15, 0.05, 0.1)
biostat_df <- data.frame(language, tasks, percent_time_spent)
biostat_df
## Banking Experience
requirements <- c('Basel (PD/LGD/EAD)', 'Credit Scoring', 'IFRS9 (ECL)', 'CECL (ECL)', 'Stress Testing (Stressed ECL)')
percent_time_spent <- c(0.5, 0.2, 0.1, 0.15, 0.05)
banking_df <- data.frame(requirements, percent_time_spent)
banking_df

# Plot them!
ggplot(data=biostat_df, aes(y=language, x=percent_time_spent)) + 
  geom_bar(aes(color=reorder(tasks, percent_time_spent)), stat='identity') + 
  labs(x='Time Spent', y = 'Programming Language', color='Tasks') +
  scale_x_continuous(labels= scales::percent)

ggplot(data=banking_df, aes(y=reorder(requirements, percent_time_spent), x=percent_time_spent)) + 
  geom_bar(stat='identity') + 
  labs(x='Time Spent', y = 'Requirements') +
  scale_x_continuous(labels= scales::percent)
