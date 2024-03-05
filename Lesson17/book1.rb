book = {
	'Конопатов' => {email: 'slakdl@gmail.com', cell_phone: '87238782', work_phone: '9983892'},
	'Лаженец' => {email: 'lololo7711@gmail.com', cell_phone: '345346456', work_phone: '6546456'},
	'Валентинова' => {email: 'valen1111@gmail.com', cell_phone: '45645645', work_phone: '685658'},
	'Федоров' => {email: 'fedaoora1@gmail.com', cell_phone: '34534534', work_phone: '568567856'}
}

print "Enter Last name: "
name = gets.strip.capitalize

#puts "email: #{book[name[:email]]}, cell_phone: #{book[name[:cell_phone]]}, work_phone: #{book[name[:work_phone]]}"

book[name].each do |key, value|
	puts "#{key} - #{value}"
end
