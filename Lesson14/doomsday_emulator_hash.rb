
  
@humans = 30
@machines = 30

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

@cities = [
  "Токио",
  "Дели",
  "Шанхай",
  "Сан-Паулу",
  "Мумбаи",
  "Осака",
  "Бэйджин",
  "Манчестер",
  "Филадельфия",
  "Нью-Йорк",
  "Бангкок",
  "Калькутта",
  "Буэнос-Айрес",
  "Лос-Анджелес",
  "Москва",
  "Стамбул",
  "Каир",
  "Рио-де-Жанейро",
  "Карачи",
  "Париж",
  "Лима",
  "Лондон",
  "Тегеран",
  "Лахор",
  "Бангалор",
  "Ченнай",
  "Хайдарабад",
  "Джохор-Бахру",
  "Дубай",
  "Хошимин",
  "Майами",
  "Шэньчжэнь",
  "Сеул",
  "Дакка",
  "Манагуа",
  "Куала-Лумпур",
  "Инчхон",
  "Сантьяго",
  "Лимасол",
  "Сидней",
  "Штутгарт",
  "Копенгаген",
  "Хельсинки",
  "Киев",
  "Таллинн",
  "Осло",
  "Стокгольм",
  "Белград",
  "Брюссель",
  "Варшава",
  "Лиссабон",
  "Вена"
]

def random_city
  dice = rand(0..49)
  @city = @cities[dice]
end

def random_sleep
  sleep rand(1.5..2.5)
end

def stats 
  puts "Осталось #{@humans} людей и #{@machines} машин"
end

def event1
  random_city
  puts "Запущена ракета по городу: #{@city}"
  random_sleep
  boom
end

def event2
  random_city
  puts "Применено радиоактивное оружие в городе: #{@city}"
  random_sleep
  boom
end

def event3
  random_city
  puts "Группа солдат прорывает оборону противника в городе: #{@city}"
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
  big_event
  puts '-'
  stats
  puts'-'
  check_victory
  random_sleep
  new_actor
  puts'-'
  stats
end