# frozen_string_literal: true

require_relative 'lab6_3_main'

print 'Введите количество единиц растра: '
rastr = gets.to_f

puts 'Вызов с помощью блока:'.center(40)

puts 'Масштаб функции x * sin(x):'
puts(scale(rastr) { |x| x * Math.sin(x) })

puts 'Масштаб функции tan(x):'
puts(scale(rastr) { |x| Math.tan(x) })

puts 'Вызов с помощью лямбда-функции:'.center(40)

puts 'Масштаб функции x * sin(x):'
my_lambda = ->(x) { x * Math.sin(x) }
puts(scale(rastr, &my_lambda))

puts 'Масштаб функции tan(x):'
my_lambda = ->(x) { Math.tan(x) }
puts(scale(rastr, &my_lambda))
