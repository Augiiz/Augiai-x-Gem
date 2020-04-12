# frozen_string_literal: true

require 'test/unit'

puts 'iveskite pirma krastine:'
x = gets.to_f
puts 'iveskite antra krastine:'
y = gets.to_f
puts 'iveskite trecia krastine:'
z = gets.to_f

class Trikampiai
  def trikampis(x, y, z)
    if x + y > z && x + z > y && y + z > x
      f = (x + y + z) / 2
      s = Math.sqrt(f * (f - x) * (f - y) * (f - z))
      if x == y && y == z
        return "lygiakrastis trikampis! plotas: #{s.round(2)}"
      elsif x == y && x != z || x == z && x != y
        return "lygiasonis trikampis! plotas: #{s.round(2)}"
      else
        return "ivairiakrastis! plotas: #{s.round(2)}"
      end
    else
      'trikampio sudarymas negalimas'
    end
  end
end

puts Trikampiai.new.trikampis(x, y, z)

class TestTrikampiai < Test::Unit::TestCase
  def test_trikampis
    assert_equal('lygiakrastis trikampis! plotas: 7.48', Trikampiai.new.trikampis(5, 5, 5))
    assert_equal('lygiasonis trikampis! plotas: 12.0', Trikampiai.new.trikampis(5, 5, 6))
    assert_equal('ivairiakrastis! plotas: 14.7', Trikampiai.new.trikampis(5, 6, 7))
    assert_equal('trikampio sudarymas negalimas', Trikampiai.new.trikampis(5, 5, 11))
  end
end
