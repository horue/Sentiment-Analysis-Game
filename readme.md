# Sentiment-Analysis-Game

This Ruby project, utilizes the Sentimental gem for sentiment analysis of user-provided messages and make their sum based on players opinions.

#### Requirements

-   Ruby installed on your system.
-   The Sentimental gem (`gem install sentimental`).

#### Usage

1.  **Setup:**
    
    -   Ensure you have Ruby installed on your machine.
    -   Install the Sentimental gem by running `gem install sentimental`.
2.  **Running the Script:**
    
    -   Clone the project repository and navigate to the directory.
    -   Run the script in your terminal using `ruby script_name.rb`.
    -   Follow the prompts to enter messages about how you are feeling.
3.  **Functionality:**
    
    -   The script initializes a sentiment analyzer and loads default settings.
    -   It starts with an initial score of `0.1`.
    -   You can enter messages, and the script will analyze their sentiment:
        -   Positive sentiment increases the score.
        -   Negative sentiment also increases the score, as per the current script logic.
    -   The loop continues until the score drops below `-1`, at which point the script exits.
4.  **Output:**
    
    -   For each message, the script prints whether the sentiment was positive or negative and the updated score.
    -   If the score drops below `-1`, a message is displayed indicating that the user is not ready to continue.

#### Example

ruby

    `require 'sentimental'
    
    analyzer = Sentimental.new
    analyzer.load_defaults
    
    score = 0.1
    
    loop do
      print "Enter a message on how you are feeling: "
      message = gets.chomp
    
      sentiment = analyzer.sentiment(message)
      sentiment_score = analyzer.score(message)
    
      if sentiment == :positive
        score += sentiment_score
        puts "Positive Sentiment! Score: #{score}"
      elsif sentiment == :negative
        score += sentiment_score
        puts "Negative Sentiment... Score: #{score}"
      end
    
      if score < -1
        puts "It looks like you are not ready for this."
        puts "See you later."
        break
      end
    end` 

#### Notes

-   Modify the logic as needed to suit your specific application or sentiment analysis requirements.
-   This script demonstrates basic sentiment analysis using the Sentimental gem in Ruby within the context of the Sentiment-Analysis-Game project.