# NonLinear-Regression
## Gauss-Newton Non-Linear Regression
This project implements the Gauss-Newton algorithm for non-linear regression in MATLAB. The code uses a generic implementation of the algorithm to fit non-linear models to data.

## Getting Started
To use this code, you will need to have MATLAB installed on your machine. Once you have MATLAB installed, you can download or clone this repository to your local machine.

## Usage
To use the code, you will need to modify the jac function to implement the specific non-linear model you want to fit to your data. The function takes two input vectors x and y, which represent the independent and dependent variables in your data, respectively.

## To run the code, simply call the jac function with your input data vectors as arguments, like this:

x = [1, 2, 3, 4, 5];
y = [2, 4, 6, 8, 10];
[a, error] = jac(x, y);



The code will output the estimated parameter values a and the residual error values error.

https://github.com/AniketKumarC007/NonLinear-Regression/blob/main/graph.png
