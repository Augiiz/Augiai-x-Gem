# frozen_string_literal: true

require 'test/unit'

num = []

class Palyginimas
  def skaiciai(num)
    num.min
  end
end

while num.length < 3
  puts 'iveskite skaicius: '
  i = gets.chomp
  num << i.to_i
end

puts 'maziausias: ', Palyginimas.new.skaiciai(num)

class TestPalyginimas < Test::Unit::TestCase
  def test_skaiciai
    assert_equal(69, Palyginimas.new.skaiciai([69, 420, 422]))
  end
end
