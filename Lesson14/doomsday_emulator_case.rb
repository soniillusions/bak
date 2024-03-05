@humans = 30000
@machines = 30000

 def luck?
   rand(0..1) == 1
 end

def boom
  diff = rand(1..5)
  if luck?
    @machines -= diff
    puts "#{diff} машин уничтожено"
  else
    @humans -= diff
    puts "#{diff} людей погибло"
  end
end

def new_actor
  diff = rand(1..5)
  if luck?
    @machines += diff
    puts "#{diff} машин появилось на свет"
  else
    @humans += diff
    puts "#{diff} людей появилось на свет"
  end
end

def big_event
  x = rand(1..10)
  diff = rand(10..30)
  if x == 5
    if luck?
      @machines -= diff
      puts "Приминено тайное оружие: #{diff} машин уничтожено!"
    else
      @humans -= diff
      puts "Приминено тайное оружие: #{diff} людей погибло"
    end
  end
end

def random_city
  dice = rand(1..10)
  case dice
  when 1
    'Moscow'
  when 2
    'Pekin'
  when 3
    'Tokyo'
  when 4
    'Orlando'
  when 5
    'Budapest'
  when 6
    'Paris'
  when 7
    'Oslo'
  when 8
    'Hamburg'
  when 9
    'Barcelona'
  when 10
    'Los Angeles'
  end
end

def random_sleep
  sleep rand(0.001..0.005)
end

def stats 
  puts "Осталось #{@humans} людей и #{@machines} машин"
end

def event1
  puts "Запущена ракета по городу #{random_city}"
  random_sleep
  boom
end

def event2
  puts "Применено радиоактивное оружие в городе: #{random_city}"
  random_sleep
  boom
end

def event3
  puts "Группа солдат прорывает оборону противника в городе: #{random_city}"
  random_sleep
  boom
end

def check_victory
  
 if @machines <= 0
   puts 'Люди победили'
   exit
 elsif @humans <= 0
   puts 'Машины победили'
   exit
 end
end

loop do 
  puts ''
  check_victory
  
  puts '###############'
  
  dice = rand(1..3)

  if dice == 1
    event1
  elsif dice == 2
    event2
  elsif dice == 3
    event3
  end

  random_sleep
  
  if big_event
    random_sleep
  end

  puts '-'

  stats
  random_sleep

  puts'-'

  check_victory
  random_sleep

  new_actor
  random_sleep

  puts'-'
  stats
  random_sleep
end