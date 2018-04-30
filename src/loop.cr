module Loop
  VERSION = "1.0.0"
end

def loop(start = 0)
  while true
    yield start
    start += 1
  end
end
