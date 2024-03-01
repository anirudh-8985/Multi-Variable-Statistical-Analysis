# Reading Data from CSV
dataset <- read.csv("apple_quality.csv")

# Displaying the top 5 rows
head(dataset)

# Dropping unnecessary columns
dataset <- dataset[, !colnames(dataset) %in% c('A_id')]

# Convert categorical variable to numeric
dataset$Quality <- as.numeric(factor(dataset$Quality, levels = c("bad", "good")))

# Calculate mean vector
mean_vector <- colMeans(dataset)

# Calculate covariance matrix
cov_matrix <- matrix(NA, nrow = ncol(dataset), ncol = ncol(dataset))
for (i in 1:ncol(dataset)) {
  for (j in 1:ncol(dataset)) {
    cov_matrix[i, j] <- sum((dataset[, i] - mean_vector[i]) * (dataset[, j] - mean_vector[j])) / (nrow(dataset) - 1)
  }
}

# Calculate standard deviation vector
std_dev_vector <- sqrt(diag(cov_matrix))

# Calculate correlation matrix
cor_matrix <- cov_matrix / (std_dev_vector %*% t(std_dev_vector))

# Print Covariance Matrix
print("Covariance Matrix:")
print(cov_matrix)
#Inferfence:
#1) The diagonal values represent the variance of each variable. Variance measures the spread of data points around the mean of the variable.
#2) Off-diagonal values represent the covariance between pairs of variables. Covariance measures the degree to which two variables change together.


# Print Correlation Matrix
print("Correlation Matrix:")
print(cor_matrix)

# Inference:
# The correlation matrix shows the strength and direction of relationships between variables, 
# with values closer to 1 indicating strong positive correlation, values closer to -1 indicating
# strong negative correlation, and values close to 0 indicating little to no correlation.
# The off-diagonal values represent the correlations between different pairs of variables





