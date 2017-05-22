class Book
  # TODO: your code goes here!
  def title=(title)
    words = title.split
    dont_cap = ["the", "a", "an", "and", "or", "in", "of", "to"]
    words.each_with_index do |word, idx|
      if idx == 0
        word.capitalize!
      elsif dont_cap.include?(word)
        word
      else
        word.capitalize!
      end
    end
    @title = words.join(" ")
  end

  def title
    @title
  end

end
