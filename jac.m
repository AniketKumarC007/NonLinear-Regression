%[a,b] = jac(X,Y)
function [a,error] = jac(x,y)
    a = [1.5;1.5];
    num_iter = 100;
    num_points = length(x);
    tol_lim = 0.01;
   f = ones(num_points,1);
   Z = ones(num_points,2);
   D = ones(num_points,1);
   error  = zeros(num_iter,1);
    for iter = 1:num_iter
        a0 = a(1);
        a1 = a(2);
        for i = 1:num_points
            f(i) = exp(a0*(1- exp(-a1*(x(i)))));
            Z(i,1) = -exp(-a0*(exp(-a1*x(i)) - 1))*(exp(-a1*x(i)) - 1);
            Z(i,2) = a0*x(i)*exp(-a0*(exp(-a1*x(i)) - 1))*exp(-a1*x(i));
            D(i) = y(i)-f(i);
            error(iter) = error(iter) + (D(i)^2);
           
        end
        %if(abs(error(iter)-error(iter-1))<tol_lim)
                %break
       
            del_a = (inv(Z'*Z))*(Z'*D);
            a = a + del_a;
           
         
            %display(out);
    end
   X_field = linspace(1,100,100);
 plot(X_field,error);
 plot(x,y);
 hold on
 plot(x,f);
 hold off
   
end

