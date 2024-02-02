#Defining a matrix in R
A <- matrix(data=c(-2,500,893,0.55),nrow=2,ncol=2)
A

# Defining a matrix which is stored in row major order first
matrix(data = c(1,2,3,4,5,6),nrow=2,ncol=3,byrow=TRUE)

# Defining a matrix which is stored in column major order first
matrix(data = c(1,2,3,4,5,6),nrow=2,ncol=3,byrow=FALSE)


# Arranging multiple vectors in array
rbind(1:3,4:6)
cbind(c(1,4),c(2,5),c(3,6))

# Dimension of a matrix
mymat <- rbind(c(1,3,4),5:3,c(100,20,90),11:13)
dim(mymat)  # dimension of the matrix
nrow(mymat)  # no.of rows in  matrix
ncol(mymat)  # no.of columns in  matrix

# Extracting elements of a matrix
A <- matrix(c(0.3,4.5,55.3,91,0.1,105.5,-4.2,8.2,27.9),nrow=3,ncol=3)
A

diag(x=A)   # Get the diagonal elements of matrix A

A[3,2]          # Access the element in the 3rd row and 2nd column of matrix A
A[,2]           # Get the entire 2nd column of matrix A
A[2:3,]         # Get the 2nd and 3rd rows of matrix A
A[,c(3,1)]      # Get columns 3 and 1 of matrix A
A[c(3,1),2:3]   # Get elements in the 3rd and 1st columns, as well as the 2nd and 3rd rows of matrix A

# Manipulating Matrix A
A[,-2]        # Remove the 2nd column from matrix A
A[-1,3:2]     # Remove the 1st row and display the 3rd and 2nd columns of matrix A
A[-1,-2]      # Remove the 1st row and the 2nd column from matrix A
A[-1,-c(2,3)] # Remove the 1st row and the 2nd and 3rd columns from matrix A

# Create a copy of matrix A named B
B <- A

# Modify matrix B
B[2,] <- 1:3                # Assign values 1, 2, 3 to the 2nd row of matrix B
B[c(1,3),2] <- 900          # Assign value 900 to the 2nd column of rows 1 and 3 in matrix B
B[,3] <- B[3,]              # Assign the entire 3rd row of matrix B to all elements of the 3rd column

# Print matrices A and B to observe changes
A
B

# Further modifications to matrix B
B[c(1,3),c(1,3)] <- c(-7,7)  # Assign values -7 and 7 to the elements in the 1st and 3rd rows/columns of matrix B
B[c(1,3),2:1] <- c(65,-65,88,-88)  # Assign specific values to elements in the 2nd and 1st columns of rows 1 and 3 in matrix B
diag(x=B) <- rep(x=0,times=3)  # Set the diagonal elements of matrix B to 0

