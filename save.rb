require 'inifile'
require_relative 'l1'

$save = IniFile.load('save.ini')


def load_game(level)
  current = $save['current']['status']
end

def save_game(current_level)
  $save['current']['status'] = current_level.to_s
  $save.save
end

def save_level(level, score)
  $save[level.to_s]['status'] = score.to_s
  $save.save
end

def save_answer(question, answer)
  answer = IniFile.load('answer.ini')
  answer['answerslog'][question.to_s] = answer.to_s
  answer.save
end

def new_game
  $save['current']['status'] = 1
  $save.save
  level1()
end


def next_level(level, def_)
  def_
end

if __FILE__ == $0
  puts load_game
  save_game('3b')
  save_level(1, 0.423)
end
