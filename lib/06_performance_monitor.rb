require "time"

def measure (i = 1)
  start_time = Time.now
  i.times do
    yield
  end
  (Time.now - start_time)/i
end
