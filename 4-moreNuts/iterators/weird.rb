def weird(arr1, out=[])
  arr1.each {|ele1|
    out = puts ele1 + " is out"}
  out.to_a
end

p weird(["a", "c", "x"])
