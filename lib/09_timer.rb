class Timer

  def initialize
    @start_time = Time.now
  end

  def seconds
    @elapsed_time = (Time.now - @start_time).to_i
  end

  def seconds=(time)
    @elapsed_time = time
  end

  def time_string
    hours = @elapsed_time / 3600
    minutes = (@elapsed_time - (hours * 3600)) / 60
    seconds = (@elapsed_time - (hours * 3600)) - (minutes * 60)
    padded(hours) + ":" + padded(minutes) + ":" + padded(seconds)
  end

  def padded(int)
    if int.to_s.split("").length == 2
      return int.to_s
    elsif int == 0
      return "00"
    elsif int.to_s.split("").length == 1
      return "0" + "#{int}"
    end
  end

end
