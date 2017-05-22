class Temperature
  # TODO: your code goes here!

  def initialize(hash)
    @ftemp = hash[:f]
    @ctemp = hash[:c]
    @ftemp = (@ctemp.to_f)*(9.0/5)+32 unless @ctemp.nil?
    @ctemp = ((@ftemp.to_f) - 32)*(5.0/9) unless @ftemp.nil?
  end

  def in_fahrenheit
    @ftemp
  end

  def in_celsius
    @ctemp
  end

  # Factory mehtods
  def self.from_celsius(temp)
    self.new(:c => temp)
  end

  def self.from_fahrenheit(temp)
    self.new(:f => temp)
  end

end

# Temperature subclasses
class Celsius < Temperature

  def initialize(temp)
    @ctemp = temp
    @ftemp = (@ctemp.to_f)*(9.0/5)+32 unless @ctemp.nil?
  end

end

class Fahrenheit < Temperature

  def initialize(temp)
    @ftemp = temp
    @ctemp = ((@ftemp.to_f) - 32)*(5.0/9) unless @ftemp.nil?
  end

end
