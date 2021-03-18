function p3_14()
    k=0;
    for i = -5:.5:50
        k=k+1;
        t(k)=i;
        v(k)=speed(t(k));
    end
    plot(t,v) 
end

function v = speed(t)
    if t<0
        v = 0;
    elseif t<8
        v = 10*t^2 - 5*t; 
    elseif t<16
        v = 624 - 3*t;
    elseif t<26
        v = 36*t + 12*(t - 16)^2;
    else
        v = 2136*exp(-0.1*(t-26));
    end 
end