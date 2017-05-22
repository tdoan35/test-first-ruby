class Dictionary
  # TODO: your code goes here!

  def initialize
    @entries = {}
  end

  def entries
    @entries
  end

  def add(entry)
    if entry.is_a?(Hash)
      entry.each do |key, value|
        @entries[key] = value
      end
    else
      @entries[entry] = nil
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(entry)
    if @entries.keys.include?(entry) == true
      return true
    else
      return false
    end
  end

  def find(entry)
    answer = {}
    @entries.each do |key, value|
      if key.include?(entry)
        answer[key] = value
      end
    end
    answer
  end

  def printable
    print_string = []
    @entries.sort.each do |key, value|
      print_string << "[#{key}] \"#{value}\""
    end
    print_string.join("\n")
  end

end
