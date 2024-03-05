def phone_to_number(phone)

phone.each_char do |chr|
 case chr
 when 1
 	print 1
  when 2
  print 2
  when 3
  print 3
  when 4
  print 4
  when 5
  print 5
  when 6
  print 6
  when 7
  print 7
  when 8
  print 8
  when 9
  print 9
  when 0
  print 0
  when 'A' || 'B' || 'C' 	
    print 2
end
end

end

puts phone_to_number('590ABC')