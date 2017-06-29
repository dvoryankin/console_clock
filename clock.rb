require "colorize"

digits = [[' _ ', '   ', ' _ ', ' _ ', '   ', ' _ ', ' _ ', ' _ ', ' _ ', ' _ '],
          ['| |', '  |', ' _|', ' _|', '|_|', '|_ ', '|_ ', '  |', '|_|', '|_|'],
          ['|_|', '  |', '|_ ', ' _|', '  |', ' _|', '|_|', '  |', '|_|', ' _|']]


i = 1
system ('clear')
loop do
  i = 1 if i > 3
  sleep(1)
  system ('clear')
  3.times do |string|
    Time.now.strftime('%H').each_char.to_a.each do |num|
      print digits[string][num.to_i].blue
    end

    i == 2 || i == 3 ? print('.'.white) : print(' ')

    Time.now.strftime('%M').each_char.to_a.each do |num|
      print digits[string][num.to_i].blue
    end

    i == 2 || i == 3 ? print('.'.white) : print(' ')

    Time.now.strftime('%S').each_char.to_a.each do |num|
      print digits[string][num.to_i].blue
    end

    i += 1
    puts
  end
end
