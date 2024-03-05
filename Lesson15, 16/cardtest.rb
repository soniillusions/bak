hash = { a: "1", b: 2, c: "1", d: 3, e: 2 }

count = hash.values.count { |value| value == "1" }

puts count
