@a = 12

def get_password
	@a = 2
	print "Return password: "
	gets.chomp  * 3
end

x = get_password

puts "password was entered: #{x}"

puts "Переменная а = #{@a}"
