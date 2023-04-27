data{
  real alpha_mean;
  real alpha_std;
  real theta_mean;
  real theta_std;
  real miles_mean;
  real miles_std;
} 

generated quantities {

  real alpha = normal_rng(alpha_mean,alpha_std);
  real theta = normal_rng(theta_mean,theta_std);
  real miles = normal_rng(miles_mean,miles_std);
  int y_sim;
  real lambda;
  lambda = alpha + theta*miles;
  y_sim = poisson_log_rng(lambda);

}