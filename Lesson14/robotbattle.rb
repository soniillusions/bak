arr1 = Array.new(10, 1)
arr2 = Array.new(10, 1)



def fire arr
  i = rand(0..9)
if arr[i] == 1
  arr[i] = 0
  puts "Робот по индексу #{i} убит"
else
  puts "Промазали"
end
end

def sleep_rand
  sleep rand(0.5..2)
end

def count arr
  x = arr.count do |x|
    x == 1
  end
  puts "Роботов осталось: #{x}"
end

def check_win arr
  x = arr.count do |x|
    x == 1
  end
  if x == 0
    puts "Команда номер победила"
    sleep (3)
    exit
  end
end

loop do
  puts '---------------'
puts 'Ход первой команды'
  sleep_rand
fire arr2
  sleep_rand
count arr2
  sleep_rand
check_win arr2
  sleep_rand

  puts "###############"
puts 'Ход второй команды'
  sleep_rand
fire arr1
  sleep_rand
count arr1
  sleep_rand
check_win arr1
  sleep_rand
end
