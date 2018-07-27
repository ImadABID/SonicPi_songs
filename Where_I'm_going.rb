
use_synth :piano

speed = 0.3

live_loop:d do
  play :e3
  sleep speed
end

r1=(ring :c2)
r2=(ring :c3)

i=0
b=true
live_loop:d2 do

  if(b)then
    play r1.tick
  else
    play r2.tick
  end
  
  if(i==4)then
    b=!b
    i=0 
  end

  i+=1
  sleep speed
end

live_loop :thaa do
  sample :sn_generic , beat_stretch: 4*speed
  sleep 8*speed
end

live_loop :tek do
  sample :bd_tek
  sleep 2*speed
end

live_loop :wahha do
  sample :ambi_dark_woosh , beat_stretch: 32*speed
  sleep 32*speed
end