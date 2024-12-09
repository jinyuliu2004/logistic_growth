growth_data <- read.csv("experiment.csv")

LogisticFunction <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

ExponentialFunction <- function(t) {
  N <- N0*exp(r*t)
  return(N)
}

N0 <- exp(6.903e+00) #

r <- 9.990e-03 #

K <- 6.000e+10 #


ggplot(aes(t, N), data = growth_data) +
  geom_function(aes(color = "Logistic"), fun = LogisticFunction) +
  geom_function(aes(color = "Exponential"), fun = ExponentialFunction) +
  ylim(0, 10e+10) +
  labs(
    title = "Comparison of Logistic and Exponential Growth",
    x = "Time (t)",
    y = "Population (N)",
    color = "Growth Functions"  
  ) +
  scale_color_manual(values = c("Logistic" = "red", "Exponential" = "blue"))


