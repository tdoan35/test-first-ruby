def capitalized?(word)
  if word[0] == word.capitalize[0]
    return true
  end
  return false
end

def translate(str)
  vowels = ["a", "e", "i", "o"]
  words = str.split(" ")
  cap_words = []

  # Checking which words need capitalized?
  words.each_with_index do |word, idx|
    if capitalized?(word) == true
      cap_words << idx
      words[idx] = word.downcase
    end
  end

  # Translating each word into Pig Latin
  words.each do |word|
    if vowels.include?(word[0])
      word << "ay"
    else
      until vowels.include?(word[0])
        word << "#{word[0]}"
        word[0] = ""
      end
      word << "ay"
    end
  end

  # Capitalizing the words in cap_words
  if cap_words.empty? == false
    cap_words.each do |idx|
      words[idx] = words[idx].capitalize
    end
  end

  words.join(" ")
end
