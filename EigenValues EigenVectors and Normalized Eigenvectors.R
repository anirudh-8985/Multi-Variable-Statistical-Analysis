# Finding eigevalues, eigenvectors, and normalized eigenvectors
A = matrix(data = c(1,2,3,4,5,6,7,8,9), nrow = 3, ncol = 3, byrow = TRUE)
ev = eigen(A)


values = ev$values    # eigen values
vectors = ev$vectors  # eigrn vectors
print(values)
print(vectors)

v1 = vectors[, 1]
v2 = vectors[, 2]
v3 = vectors[, 3]

normalized_v1 = v1 / sqrt(crossprod(v1))
normalized_v2 = v2 / sqrt(crossprod(v2))
normalized_v3 = v3 / sqrt(crossprod(v3))

print(normalized_v1)
print(normalized_v2)
print(normalized_v3)
