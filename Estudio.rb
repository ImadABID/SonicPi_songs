$speed =0.2

def imad(t,l)
  t.times do
    use_synth :piano
    play l.tick
    sleep $speed
  end
end

def final()
  
  use_synth :piano
  
  play :e1
  play :b1
  play :e3
  sleep $speed
  
  play :d3
  sleep $speed
  
  play :d1
  play :c3
  sleep $speed
  
  play :b2
  sleep $speed
  
  play :f1
  play :d2
  play :c3
  sleep $speed
  
  play :d3
  sleep $speed
  
  play :e1
  play :b1
  play :e2
  play :b2
  play :e3
  sleep $speed
  
  
end


l1=(ring :a1, :c3, :e3)
l2=(ring :e1, :a2, :b2)
l3=(ring :d2, :d3, :f3)

imad(6,l1)
imad(6,l2)
imad(6,l1)
imad(6,l2)
imad(6,l1)
imad(6,l3)
final()

