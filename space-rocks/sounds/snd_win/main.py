import playsound
import os

b = True
while(b):
    a = playsound.playsound(os.getcwd() + '\\snd_win.wav', False)

print(a)