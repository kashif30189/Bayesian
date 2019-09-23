# This analysis is for testing the bayesian values

# here i am creating a function just to check if the probabilities do actually change over time

# the input values are for 
input_list <- list(p_theta = c(0.3,0.4,0.3),
                   theta_values = c(0.3,0.5,0.7))
p_theta <- c(0.3,0.4,0.3)
theta_values <-  c(0.3,0.5,0.7)
likelihood_function <- function(outcome_vector,theta){
  Reduce('*',theta^outcome_vector * (1-theta)^(1-outcome_vector))
}