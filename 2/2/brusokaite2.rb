num = []

while num.length < 3
  i = gets.chomp
  num << i
end
puts "maziausias: " + num.min
