class RPNCalculator
  # TODO: your code goes here!

  def initialize
    @stack = []
  end

  def push(n)
    @stack << n
  end

  def plus
    if @stack.length < 2
      raise "calculator is empty"
    else
      @stack << @stack.pop + @stack.pop
    end
  end

  def value
    @stack[-1]
  end

  def minus
    if @stack.length < 2
      raise "calculator is empty"
    else
      top = @stack.pop
      bot = @stack.pop
      @stack << bot - top
    end
  end

  def divide
    if @stack.length < 2
      raise "calculator is empty"
    else
      top = @stack.pop
      bot = @stack.pop
      @stack << bot.to_f / top
    end
  end

  def times
    if @stack.length < 2
      raise "calculator is empty"
    else
      @stack << @stack.pop * @stack.pop
    end
  end

  def tokens(string)
    @tokens = []
    string.split.each do |value|
      if value == "+"
        @tokens << :+
      elsif value == "-"
        @tokens << :-
      elsif value == "*"
        @tokens << :*
      elsif value == "/"
        @tokens << :/
      else
        @tokens << value.to_i
      end
    end
    @tokens
  end

  def evaluate(string)
    tokenstack = tokens(string)
    stack = []
    tokenstack.each do |value|
      if value.is_a?(Integer)
        stack.push(value)
      elsif value == :+
        stack << stack.pop + stack.pop
      elsif value == :-
        top = stack.pop
        bot = stack.pop
        stack << bot - top
      elsif value == :*
        stack << stack.pop * stack.pop
      elsif value == :/
        top = stack.pop
        bot = stack.pop
        stack << bot.to_f / top
      end
    end
    return stack[-1]
  end

end
