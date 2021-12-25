# frozen_string_literal: true

def scale(rastr)
  left = -2.0
  right = 2.0
  delta = 0.01
  mas = []
  (left..right).step(delta) { mas << (yield (left += delta)) }
  rastr / mas.max
end
