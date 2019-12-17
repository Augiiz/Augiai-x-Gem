# frozen_string_literal: true

require 'test/unit'

class Egzaminas
  def pazymys(x)
    if x > 10
      'Per didelis skaicius'
    elsif x <= 0
      'Per mazas skaicius'
    elsif x >= 5
      'islakytas'
    else
      'neislaikytas'
    end
  end
end

puts 'iveskite pazymi: '
x = gets.to_i
puts Egzaminas.new.pazymys(x)

class TestEgzaminas < Test::Unit::TestCase
  def test_pazymys
    assert_equal('Per didelis skaicius', Egzaminas.new.pazymys(11))
    assert_equal('Per mazas skaicius', Egzaminas.new.pazymys(-5))
    assert_equal('islakytas', Egzaminas.new.pazymys(7))
    assert_equal('neislaikytas', Egzaminas.new.pazymys(3))
  end
end
