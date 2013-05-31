def times_table(rows)
  r = 1
  c = 1
  
  while r <= rows
    while c <= rows
      print r*c
      print " " 
      c += 1
    end
    print "\n"
    r += 1
  end
end 
 
times_table(3)