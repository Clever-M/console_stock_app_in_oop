def start_menu
  loop do
    puts color_text("#{'=' * 6} choose one of the options below #{'=' * 6}", "yellow")
    puts "#{color_text("1", "red")} - #{color_text(" Products registration", "blue")}"
    puts "#{color_text("2", "red")} - #{color_text(" Products list", "blue")}"
    puts "#{color_text("3", "red")} - #{color_text(" Stock withdrawal", "blue")}"
    puts "#{color_text("4", "red")} - #{color_text(" Exit", "blue")}"
    print "-> "

    option = gets.to_i

    case option
    when 1
      product_registration
    when 2
      list_products
    when 3
      stock_withdrawal
    when 4
      clean_screen
      exit
    else
      message color_text("Invalid option.", "red")
    end
  end
end

def treat_nonsense(option, file)
  unless (['y','n', ''].include?(option.strip.downcase))
    message( color_text("Invalid option.", "red"), true, true, 2)
    create_file(file)
  end

  yield
end

def create_file(file)
  puts color_text("WARNING: You don't have a database file on: #{file}", "red")
  puts color_text("To use this software you will need a database on #{file}", "blue")
  puts color_text("Do you want to create a new one? (Y/n)", "blue")
  print color_text("-> ", "green")
  option = gets.chomp
  clean_screen

  treat_nonsense(option, file) do
    if (option.strip.downcase == 'y' || option.strip.empty?)
      system("mkdir", "db") unless Dir.exist?(file)
      system("touch", file)
      File.open(file, 'w') { |f| f.write("[]")}
    else
      puts color_text("Terminate the software?(Y/n)", "blue")
      print color_text("-> ", "green")
      option = gets.chomp

      clean_screen

      treat_nonsense(option, file) do
        exit if(option.strip.downcase == 'y' || option.strip.empty?)
        create_file(file)
      end
    end
  end
end
