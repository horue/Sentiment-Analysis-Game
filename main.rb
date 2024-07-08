require 'Sentimental'

analyzer = Sentimental.new
analyzer.load_defaults


score = 0


loop do
  print "Enter a message on how you are feeling: "
  message = gets
  sentiment = analyzer.sentiment message

  if sentiment == :positive then
    score += 1
    puts "Positive Sentiment! Score: #{score}"
  elsif sentiment == :negative then
    score -= 1
    puts "Negative Sentiment... Score: #{score}"
  end
end
