#Gnaoua
#coded by imad abid
#this file has no copyrights
#feel free to contact me:
#		imad.abied@gmail.com
#date:30/06/2018

live_loop :drum1 do
  
  sample :bd_808
  
  sleep 0.1
end

live_loop :drum2 do
  
  sample :bd_sone
  
  sleep 0.8
end

live_loop :noise do
  sleep 4*0.8
  sample :bass_dnb_f, beat_stretch: 0.1
end

sleep 3*0.8-0.1
live_loop :drum3 do
  
  sample :bd_boom
  
  sleep 2*0.8
end

sleep 0.7
tab=(ring :e2, :e3)
live_loop :piano do
  use_synth :beep
  play tab.tick
  sleep 4*0.8
end

tab=(ring :g1, :g2)
live_loop :piano2 do
  use_synth :sine
  play tab.tick
  sleep 0.8
end
