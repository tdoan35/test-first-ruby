def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, rep=0)
  result = [str] + [str]
  while rep > 2
    result << str
    rep -= 1
  end
  result.join(' ')
end

def start_of_word(str, letters)
  result = []
  i = 0
  while i < letters
    result << str[i]
    i += 1
  end
  result.join
end

def first_word(str)
  first = (str.split)[0]
  first
end

def titleize(str)
  str = str.split
  dont_cap = ["and", "the", "over"]
  result = []
  i = 0
  while i < str.length
    if dont_cap.include?(str[i]) == true && i > 0
      result << str[i]
    elsif
      result << str[i].capitalize
    end
    i += 1
  end
  result.join(" ")
end
