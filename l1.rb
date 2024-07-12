require 'Sentimental'
require_relative 'save'
require_relative 'type'

$analyzer = Sentimental.new
$analyzer.load_defaults


$score = 0.1


$questions = [
  'Hello, I am Serena. Nice to meet you.',
  'We are here today to star a new analysis system, and you will be helping us.',
  'First of all, I would like to know your name.',
  "Now, let's get started.",
  'Do you think humanity would win a war against machines? ',
  'How do you feel about the rapid advancements in AI technology? ',
  'Do you believe AI could eventually surpass human intelligence? ',
  'Are you worried about the potential misuse of AI in the future? ',
  'How do you feel about AI taking over jobs traditionally done by humans? ',
  'Do you think AI could help solve major global issues, like climate change? ',
  'Are you concerned about privacy with the increase in AI surveillance? ',
  'How do you feel about AI being used in healthcare and medical diagnosis? ',
  'Do you believe AI can truly understand human emotions? ',
  'How do you feel about the idea of AI companions or friends? ',
  'Are you optimistic about the future with AI integration in daily life? ',
  'Do you think AI will create more opportunities or more challenges for society? ',
  'How do you feel about AI being used in creative fields like art and music? ',
  'Do you trust AI systems to make important decisions, like in self-driving cars? ',
  'How do you feel about the ethical implications of AI development? ',
  'Do you think AI could pose a threat to humanity in the long run? '
]

def level1
  save_game(1)
  for question in $questions do
    putt(question)
    message = gets
    sentiment = $analyzer.sentiment message
    sentiment_score = $analyzer.score message

    if sentiment == :positive then
      $score += sentiment_score
      save_level(1, $score)
      puts "Positive Sentiment! Score: #{$score}"
    elsif sentiment == :negative then
      $score += sentiment_score
      save_level(1, $score)
      puts "Negative Sentiment... Score: #{$score}"
    end
  end

end

if __FILE__ == $0
  level1
end
