library(tidyverse)
library(gapminder)
dat_bfi <- psychTools::bfi |> 
  rownames_to_column(var = ".id") |>
  as_tibble()

dat_bfi |>
  mutate(
    gender = recode(gender, "1" = "man", "2" = "woman")
  )

dat_bfi |>
  group_by(gender) |>
  summarize(
   across(
     A1:A5, mean, 
     na.rm = TRUE
   )
  )

dat_bfi |>
  group_by(gender) |>
  summarize(
    across(
      A1:A5, 
      list(
        mean = \(x) mean(x, na.rm = TRUE),
        sd = \(x) sd(x, na.rm = TRUE)
      )
    )
  )

reversed <- c("A1", "C4", "C5", "E1", "E2", "O2", "O5")

dat_bfi |>
  mutate(across(
    all_of(reversed),
    \(x) recode(x, "6" = 1, "5" = 2, "4" = 3, "3" = 4, "2" = 5, "1" = 6),
    .names = "{.col}r"
  )) |>
  glimpse()
  


