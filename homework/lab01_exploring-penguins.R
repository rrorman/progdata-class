library(tidyverse)
library(palmerpenguins)
penguins <- palmerpenguins::penguins

#returns first 6 rows of the dataset
head(penguins)

#displays summary stats of data for every column, such as mean, med, mode, etc.
summary(penguins)

#displays the number of rows within dataset
nrow(penguins)

