function s = sigmoid(X, theta)
	
	%Adding bias
	X = [ones(length(X),1), X];	

	z = X * theta;


%Calculate Sigmoid function of z
s = 1./(1+exp(-z));
