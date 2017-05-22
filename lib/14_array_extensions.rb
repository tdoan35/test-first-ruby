class Array

  def sum
    self.inject(0){|acc, el| acc + el }
  end

  def square
    if self == []
      return []
    else
      self.map {|i| i*i}
    end
  end

  def square!
    self.map! {|i| i*i}
  end

end
