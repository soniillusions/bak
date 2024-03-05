100.times do
x = rand(101)
s = rand(0.01..101.0)
v = x * s
sleep rand(0.01..0.5)
print v
end
