A= [.2,-.1,1.0;3.0,.1,-1.0;1.0,-2.0,-.5] + (.1 - (.2*rand(3,3)))
B = inv(A)*ones(3,1)
printf("the plane passing through (%d,%d,%d), (%d,%d,%d) and (%d,%d,%d) is given by %dx + %dy + %dz = 1",A(1,1),A(1,2),A(1,3),A(2,1),A(2,2),A(2,3),A(3,1),A(3,2),A(3,3),B(1,1),B(2,1),B(3,1)) 