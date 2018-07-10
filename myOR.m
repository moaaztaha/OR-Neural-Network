function w = myOR()

%X is our training examples, theta1 calculate AND and NOR, theta2 calculate OR
X = [0 0; 0 1; 1 0; 1 1];

theta1 = [-30 10; 20 -20; 20 -20];
theta2 = [-10; 20; 20];





%Adding bias X0
%X = [ones(length(X),1), X]; not needed as the sigmoid doing the job

%Calculate hidden layer a2
a2 = sigmoid(X, theta1);

%Adding bias a0 of layer a2
%a2 = [ones(length(a2),1),a2]; not needed as the sigmoid doing the job

%Calculate output layer a3
a3 = sigmoid(a2, theta2);

%Converting to more userfriendly view 
for i=1:length(X)
    if a3(i)>=.5,
        fprintf('True\t');
    else
        fprintf('False\t');
    end;
end;
fprintf('\n')
