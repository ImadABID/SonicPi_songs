
l1=(ring :c4, :g4, :c4, :g4, :c2 )
sss=(ring :c4, :d4, :e4, :f4, :g4, :a4, :b4)
speed = 0.2
i=0
$t=1
live_loop :d do
  use_synth :piano
  if(1)then
    play :d2
    sleep speed
    play :a3
    sleep speed
    play :e4
    play l1.tick
    if(i==4) then
      i=0
      sleep speed
      play :b3
      sleep 3*speed
      play sss.tick
    end
    sleep speed
    i+=1
    $t+=1
  end
end

live_loop :drums1 do
  if($t>5 && $t<30)then
    sample :bd_klub
  end
  sleep 2*speed
end


live_loop :drums3 do
  if($t>30) then
    sample :bd_boom
    sleep speed
    sample :bd_haus
  end
  sleep speed
end

