# записная книжка

phonebook = {}

loop do
  print 'Enter name: '
  name = gets.strip.capitalize

    if name == ''
      break
    end

  print 'Enter phone number: '
  phone_number = gets.strip

  phonebook[name] = phone_number
end
  puts phonebook