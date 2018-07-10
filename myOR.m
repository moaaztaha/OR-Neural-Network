function w = myOR(x,theta1,theta2)

%x is our training examples, theta1 calculate AND and NOR, theta2 calculate OR

%Adding bias X0
%x = [ones(length(x),1),x]; not needed as the sigmoid doing the job

%Calculate hidden layer a2
a2 = sigmoid(x, theta1);

%Adding bias a0 of layer a2
%a2 = [ones(length(a2),1),a2]; not needed as the sigmoid doing the job

%Calculate output layer a3
a3 = sigmoid(a2, theta2);

w = a3;
%Converting to more userfriendly view 
for i=1:length(x)
    if w(i)>=.5,
        fprintf('True\t');
    else
        fprintf('False\t');
    end;
end;
