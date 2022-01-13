sfreq = 44100;
freq = randi([20,20000],1,3);
df = sfreq/length(linspace(0,4.7911,211289));
xi = -(sfreq/2):df:(sfreq/2)- df;
for i=1:3
mysound = sin(2*pi*freq(i)*linspace(0,4.7911,211289));
subplot(2,1,1)
plot(xi,abs(fftshift(fft(mysound))));
subplot(2,1,2);
plot(mysound);
sound(mysound, sfreq);
c = input("press enter to continue");
end 
[f,sf]= audioread('D:\Eric\My CAPS homework\test.wav');
close;
ns = f + mysound';
subplot(2,2,1)
plot(f);
subplot(2,2,2);
plot(xi,abs(fftshift(fft(f))));
sound(f,sf);
c =input("This is the original sound, press enter to hear the noise induced version");
subplot(2,2,3)
plot(ns);
subplot(2,2,4);
plot(xi,abs(fftshift(fft(ns))));
sound(ns,sfreq);
c =input("This is the noise injected version, press enter to remove noise algorithmically");
close;
t = fftshift(fft(ns)).*((abs(xi) < 3000)');
subplot(2,2,1)
plot(ns);
subplot(2,2,2);
plot(xi,abs(fftshift(fft(ns))));
subplot(2,2,3);
plot(ifft(ifftshift(t)));
subplot(2,2,4);
plot(xi,abs(t));
sound(ifft(ifftshift(t),sfreq));
c =input("Press enter to try it with another sound");
[f2,sf2]= audioread('D:\Eric\My CAPS homework\CAPS_07_B9TB1707_sound.wav');
df2 = sf2/length(linspace(0,length(f2)/sf2,length(f2)));
xi2 = -(sf2/2):df2:(sf2/2)- df2;
noise2 = sin(2*pi*randi([20,20000])*linspace(0,length(f2)/sf2,length(f2)));
in2 = f2 + noise2';
subplot(2,2,1)
plot(f);
subplot(2,2,2);
plot(xi,abs(fftshift(fft(f))));
subplot(2,2,3)
plot(f2);
subplot(2,2,4);
plot(xi2,abs(fftshift(fft(f2))));
sound(f2,sf2);
c =input("This is the original sound, press enter to hear the noise induced version");
close;
subplot(2,2,1)
plot(f2);
subplot(2,2,2);
plot(xi2,abs(fftshift(fft(f2))));
subplot(2,2,3)
plot(in2);
subplot(2,2,4);
plot(xi2,abs(fftshift(fft(in2))));
sound(in2,sfreq);
c =input("This is the noise injected version, press enter to remove noise algorithmically");
close;
t2 = fftshift(fft(in2)).*((abs(xi2) < 3000)');
subplot(2,2,1)
plot(in2);
subplot(2,2,2);
plot(xi2,abs(fftshift(fft(in2))));
subplot(2,2,3);
plot(ifft(ifftshift(t2)));
subplot(2,2,4);
plot(xi2,abs(t2));
sound(ifft(ifftshift(t2),sf2));
