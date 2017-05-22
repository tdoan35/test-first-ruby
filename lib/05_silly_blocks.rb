def reverser
  str = yield
  words = str.split
  words.each do |word|
    word = word.reverse!
  end
  words.join(" ")
end

def adder(value = 1)
  yield + value
end

def repeater(i = 1)
  while i > 0
    yield
    i -= 1
  end
end
