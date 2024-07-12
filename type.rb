def putt(text, delay = 0.1)
  text.each_char do |char|
    print char
    sleep(delay)
  end
  puts
end
