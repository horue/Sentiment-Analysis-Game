require 'inifile'

$save = IniFile.load('save.ini')


def save_game(current_level)
  $save['current']['status'] = current_level.to_s
  $save.save
end

def save_level(level, score)
  $save[level.to_s]['status'] = score.to_s
  $save.save
end

if __FILE__ == $0
  save_game(3)
  save_level(1, 0.423)
end
