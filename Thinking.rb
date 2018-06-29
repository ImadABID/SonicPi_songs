#Thinking
#coded by imad abid
#this file has no copyrights
#feel free to contact me:
#		imad.abied@gmail.com
#date:29/06/2018
#this is me first song with sonicPi

use_synth :beep
live_loop :bip do
  4.times do
    play :c3
    sleep 0.4
  end
  4.times do
    play :b3
    sleep 0.4
  end
  4.times do
    play :a2
    sleep 0.4
  end
end

sleep 12*0.4

live_loop :bshakh do
  sample :drum_snare_hard, beat_stretch: 0.55
  sample :bd_sone, amp:2
  play :e3
  sleep 2*0.4
  use_synth :sine
  play :e4
  sample :bd_haus, amp:2
  sleep 2*0.4
end

sleep 4*0.4-0.13
live_loop :befor do
  sample :bd_ada
  sleep 8*0.4
end

sleep 0.13
live_loop :voice do
  sample :bd_zome, beat_stretch:4*0.4
  sleep 8*0.4
end