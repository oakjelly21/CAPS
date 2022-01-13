for i = 100:999
 i1 = mod(i, 10);
 i2 = mod(floor(i/10), 10);
 i3 = floor(i/100);
  if (i1^3+i2^3+i3^3) == i
    disp(strcat(i3+48,i2+48,i1+48))
  end
endfor
