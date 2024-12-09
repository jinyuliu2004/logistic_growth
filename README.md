# logistic_growth
This is an analysis on the logistic growth model for a 100µl E.coli isolate cultured in 1ml media, based on growth data recorded in "experiment.csv". 

In the "plot_data.R" file, two graphs are produced to visualize growth rate: 
1. population size (N) against time (t), showing exponential gowth at first, before slowing and reaching equilibrium  
2. log population size (log(N)) against time (t), showing a linear relationship before reaching equilibrium

In the "fit_linea_model.R" file, two linear models are fitted to data from "experiment.csv" under two different scenarios:
Case 1: K >> N0, t is small (exponential growth phase)
Result: log(N) = 9.990e-03t + 6.903
Case 2: N(t) = K (equilibrium phase)
Result: N = 6.000e+10

**Results**
In the "plot_data_and_model.R" file, the parameters of the model are obtained from the linear models above according to the two regression equations derived from the differential equation of exponential growth:
N(0) = exp(6.903)
r = 9.990e-03
K = 6.000e+10
The model is plotted with the data points to verify accuracy.

