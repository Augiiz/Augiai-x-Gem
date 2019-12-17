# frozen_string_literal: true

puts 'iveskite pazymi: '
x = gets.to_i

if  x > 10
  puts 'Per didelis skaicius'
elsif x <= 0
  puts 'Per mazas skaicius'
elsif x >= 5
  puts 'islakytas'
else
  puts 'neislaikytas'
end
