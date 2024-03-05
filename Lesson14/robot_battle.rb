@arr1 = Array.new(10, 100)
@arr2 = Array.new(10, 100)

def robot_hp
  hp = 100
  
end


def attack(arr)
  sleep_rand
  i = rand(0..9)
  shot = rand(30..100)
if arr[i] >= 0
  arr[i] = arr[i] - shot
  puts "Робот по индексу #{i} получает урон на #{shot} hp."
else
  puts "Промазали по индексу: #{i}"
end
end

def sleep_rand
  sleep rand(0.5..2)
end

def check_win?
  robots_left1 = @arr1.count {|x| x >= 1 }
  robots_left2 = @arr2.count {|x| x >= 1 }

  if robots_left1 <= 0
    puts "Команда 2 победила, в команде осталось #{robots_left2} роботов"
    return true
end

  if robots_left2 <= 0
    puts "Команда 1 победила, в команде осталось #{robots_left1} роботов"
    return true
  end
false
end

def stats 
  sleep_rand
 cnt1 = @arr1.count {|x| x >= 1 }
  cnt2 = @arr2.count {|x| x >= 1 }
  puts "1 команда: #{cnt1} роботов в строю"
  puts "2 команда: #{cnt2} роботов в строю"
  puts "1 команда: #{@arr1.inspect}"
  puts "2 команда: #{@arr2.inspect}"
end

loop do
  puts "Первая команда наносит удар.."
  attack(@arr2)
  exit if check_win?
  stats
  sleep_rand
  puts ''

  sleep 3
  
  puts "Вторая команда наносит удар.."
  attack(@arr1)
  exit if check_win?
  stats
  sleep_rand
  puts ''
end
