for i3 = 1:9
 for i2 = 0:9
  for i1 = 0:9
   if (i1^3+i2^3+i3^3) == (i3*100+i2*10+i1)
    disp(i3*100+i2*10+i1)
   end
  endfor
 endfor
endfor
