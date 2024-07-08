require 'inifile'

$save = IniFile.load('save.ini')


def save_game(level, score)
  $save[level.to_s]['status'] = score.to_s
  $save.save
end

if __FILE__ == $0
  save_game(1, 0.423)
end
