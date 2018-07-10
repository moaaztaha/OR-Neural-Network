function s = sigmoid(z)

%Calculate Sigmoid function of z(theta(T)X)
s = 1./(1+exp(-z));
