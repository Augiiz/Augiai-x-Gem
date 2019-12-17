# frozen_string_literal: true

x = 1
z = y = a = b = j = 0

while z < 80
  a = x
  y = 0
  j = 0
  while a.positive?
    y *= 10
    y += a % 10
    a /= 10
  end
  b = x * x
  while b.positive?
    j *= 10
    j += b % 10
    b /= 10
  end
  if (x == y) && (j == (x * x))
    z += 1
    puts(x)
  end
  x += 1
end
