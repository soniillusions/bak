orders_line = "product_1=2,product_2=5,product_3=1,"

def parse_orders_line orders_line
	s1 = orders_line.split(',')

	arr =[]

	s1.each do |product|
		s2 = product.split('=')

		s3 = s2[0].split('_')
		
		id = s3[1]
		amount = s2[1]

		arr2 = [id, amount]
		arr << arr2
	end

	return arr
end

puts parse_orders_line(orders_line).inspect