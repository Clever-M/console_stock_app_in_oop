def message(msg, use_clear_screen=true, use_timer=true, timer=5)
  clean_screen if use_clear_screen
  puts msg
  sleep(timer) if use_timer
  clean_screen if use_clear_screen
end

def color_text(text, color=nil)
  colors = { "green"  => "32", "red"  => "31",
             "yellow" => "33", "blue" => "34",
             "purple" => "36"}

  return "\e[#{[colors[color], 'm', text].join('')}\e[0m" if colors.keys.include? color

  text
end

def clean_screen
  Gem.win_platform? ? system("cls") : system("clear")
end
