# frozen_string_literal: true

puts 'iveskite pirma krastine:'
x = gets.to_f
puts 'iveskite antra krastine:'
y = gets.to_f
puts 'iveskite trecia krastine:'
z = gets.to_f

if x + y > z && x + z > y && y + z > x
  f = (x + y + z) / 2
  s = Math.sqrt(f * (f - x) * (f - y) * (f - z))
  puts 'trikampi galima sudaryti'
  puts "plotas: #{s.round(2)}"
  if x == y && y == z
    puts 'Lygiakrastis trikampis!'
  elsif x == y && x != z || x == z && x != y
    puts 'lygiasonis trikampis!'
  else
    puts 'ivairiakrastis'
  end
else
  puts 'trikampio sudarymas negalimas'
end
