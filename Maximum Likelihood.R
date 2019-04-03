# Maximum likelihood estimation
data <- c(1,2,4,5,6,7)
mean(data)
# Function to 
fnom <- function(mean) {
  dnorm(data[1], mean) * dnorm(data[2], mean) * dnorm(data[3], mean) * dnorm(data[4], mean) *
    dnorm(data[5], mean) * dnorm(data[6], mean)
} 


optimise(fnom, c(1,6), maximum = T)
# Can do optimization techniquest to maximize the likelihood

plot(seq(1, 7, .1), fnom(seq(1, 7, .1)))
abline(v=mean(data))
points(2,2e-9)
