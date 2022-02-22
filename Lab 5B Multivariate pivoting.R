library(tidyverse)
set.seed(123)
missing_w2_parent <- sample(1:500, 30)
missing_w2_child <- c(missing_w2_parent[1:5], sample(1:500, 25))
family  <- read_csv(
  "https://raw.githubusercontent.com/bwiernik/progdata/main/inst/tutorials/data/family_data.csv"
) |> 
  mutate(
    across(
      starts_with("w2") & contains("parent"),
      ~ ifelse(family_id %in% missing_w2_parent, NA_real_, .x)
    ),
    across(
      starts_with("w2") & contains("child"),
      ~ ifelse(family_id %in% missing_w2_child, NA_real_, .x)
    )
  )


family_longest <- family |> 
  pivot_longer(
    cols = -family_id,
    names_to = c("wave", "scale", "family_member"),
    names_sep = "_",
    values_to = "score"
  )

print(family_longest)


family_long <- family |> 
  pivot_longer(
    cols = -family_id,
    names_to = c("wave", ".value", "family_member"),
    names_sep = "_",
    values_drop_na = TRUE
  )

print(family_long)




