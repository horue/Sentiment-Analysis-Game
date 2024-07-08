require 'inifile'

save = IniFile.load('save.ini')


def save_game(level, score)
  save = IniFile.load('save.ini')
  save[level.to_s]['status'] = score.to_s
  save.save
end

save_game(1, 0.421)
