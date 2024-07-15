require 'tty-prompt'
require_relative 'save'
require_relative 'l1'



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
    puts new_game
    when 2
    puts 'Continuing the game...'
    puts load_game(level1)
    when 3
    puts 'Displaying help...'
    when 4
        yes_no = [
            {name: 'Yes', value: 1},
            {name: 'No', value: 2},
        ]
        yn = prompt.select('Are you sure you want do exit the game?', yes_no)
        case yn
        when 1
        puts 'Exiting the game...'
        end
        when 2
        main()
    end
end


if __FILE__ == $0
    main
  end
