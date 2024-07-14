def start_menu(products)
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
      product_registration(products)
    when 2
      list_products(products)
    when 3
      stock_withdrawal(products)
    when 4
      clean_screen
      exit
    else
      message color_text("Invalid option.", "red")
    end
  end
end
