# Create example datasets about red pandas.
# Author: Zak Varty
# Last Edited: 2025-09-29

# Load required packages and functions
library(tibble)
source(file = "src/rnorm_rounded.R")

# (note: When a script is in an R project, file paths are specified relative
# to the project root, not the file itself)

# Save red panda data from local scantuary -------------------------------------
red_pandas <- tribble(
~name, ~weight_kg, ~length_cm, ~habitat, ~country,~is_female,
"Andy", 5.2, 55, "Temperate Forest", "Nepal", FALSE,
"Beyl", 4.8, 50, "Temperate Forest", "China", TRUE,
"Cco",  6.0, 60, "Temperate Forest","Bhutan", TRUE)

write.csv(x = red_pandas, file = "data/red-pandas.csv")

# Simulate some additional red panda weights -----------------------------------

## simulate red panda weights
weight_mean <- mean(red_pandas$weight_kg)
weight_sd <- sd(red_pandas$weight_kg)

set.seed(1234)
n_sim = 531
simulated_weights <- rnorm_rounded(n = n_sim, mu = weight_mean, sigma = weight_sd, digits = 1)
ID <- sample(100000:999999, size = n_sim)

# store and save in tabular format
red_panda_weights <- data.frame(ID = ID, weight = simulated_weights)
write.csv(x = red_panda_weights, file = "data/red-panda-weights.csv")
