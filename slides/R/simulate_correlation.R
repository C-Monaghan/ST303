simulate_correlation <- function(rho, n = 120) {
  # Simulate data from a multivariate normal distribution
  z <- MASS::mvrnorm(
    n = n,
    mu = c(0, 0),
    Sigma = matrix(c(1, rho, rho, 1), nrow = 2)
  )

  # Return said data
  tibble(
    x = z[, 1],
    y = z[, 2],
    target = rho
  )
}
