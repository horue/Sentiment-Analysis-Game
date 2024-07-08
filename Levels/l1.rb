require 'Sentimental'
require_relative 'save'


questions = [
  'Do you think humanity would win a war against machines? ',
  'a',
  'b'
]


for a in questions do
  print a
  message = gets
  sentiment = analyzer.sentiment message
  sentiment_score = analyzer.score message

  if sentiment == :positive then
    score += sentiment_score
    save_level(1, score)
    puts "Positive Sentiment! Score: #{score}"
  elsif sentiment == :negative then
    score += sentiment_score
    save_level(1, score)
    puts "Negative Sentiment... Score: #{score}"
  end
end
