data {
  int M; // number of years
  real miles[M]; // miles flown each year
  int y[M]; // number of fatal accidents
  real alpha_mean;
  real alpha_std;
  real theta_mean;
  real theta_std;
}

parameters {
   real alpha[M];
   real theta;
}
transformed parameters {
   real lambda[M];
   for (k in 1:M) {
    lambda[k] = alpha[k] + theta*miles[k];
  }
}
model {
  alpha ~ normal(alpha_mean,alpha_std);
  theta ~ normal(theta_mean,theta_std);
  for (k in 1:M) {
    y[k] ~ poisson_log(lambda[k]);
  }
}

generated quantities {
    real y_sim[M];
    for (k in 1:M){
        y_sim[k] = poisson_log_rng(lambda[k]);
    }
}