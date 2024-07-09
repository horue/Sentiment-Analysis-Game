require 'tty-prompt'
require_relative 'save'



def main
    system('cls')
    prompt = TTY::Prompt.new
    choices = [
    {name: 'New Game', value: 1},
    {name: 'Continue', value: 2},
    {name: 'Help', value: 3},
    {name: 'Exit', value: 4}
    ]

    selected = prompt.select('Experimentalist Serena - Ruby Version!', choices)

    case selected
    when 1
    puts 'Starting a New Game...'
    when 2
    puts 'Continuing the game...'
    puts load_game
    when 3
    puts 'Displaying help...'
    when 4
    puts 'Exiting the game...'
    end
end

main