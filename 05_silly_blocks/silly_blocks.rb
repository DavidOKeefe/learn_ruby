def reverser
  yield.split(' ').each {|word| word.reverse!}.join(' ')
end

def adder(add = 1)
  num = yield
  num + add

end

def repeater(num = 1)
 num.times {yield}
end