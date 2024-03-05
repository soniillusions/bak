array = [1, 2, 3]
if array.respond_to?(:exclude?)
  puts array.exclude?(4)
else
  puts "exclude? is not available in this version of Ruby"
end
