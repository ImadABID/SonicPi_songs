n=[:c1, :d1, :e1, :f1, :g1, :a1, :b1,
   :c2, :d2, :e2, :f2, :g2, :a2, :b2,
   :c3, :d3, :e3, :f3, :g3, :a3, :b3,
   :c4, :d4, :e4, :f4, :g4, :a4, :b4,
   :c5, :d5, :e5, :f5, :g5, :a5, :b5]

use_synth :piano

speed=0.5
a=0.9
accelerate=true
toR=true

i=0
j=0
live_loop :note do
  
  play n[i]
  
  if(accelerate)then
    speed = speed * a
    if(speed<0.1) then accelerate=false end
  else
    speed = speed / a
    if(speed>0.3) then accelerate=true end
  end
  
  sleep speed
  
  
  if(toR)then
    i+=1
    j+=1
    if(i==36)then toR=false end
    
    if(j==3) then
      i-=2
      j=0
    end
  else
    i-=1
    j+=1
    if(i==0)then toR=true end
    
    if(j==3) then
      i+=2
      j=0
    end
    
  end
  
end