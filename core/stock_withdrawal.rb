require 'terminal-table'
def stock_withdrawal(products)
  clean_screen
  message(color_text("=" * 6 + " Choose one of the products below " + "=" * 6, "yellow"), false, false)

  table = Terminal::Table.new do |t|
    t.headings = %w(ID Name Quantity)

    products.each do |row|
      t.add_row [row[:id], row[:name], row[:quantity]]
    end
  end

  puts color_text table, "purple"
  puts color_text("Enter the product ID:", "blue")
  id = gets.to_i

  product = products.find{ |p| p[:id] == id }
  unless product
    clean_screen
    message(color_text("Product with ID #{id} was not found!", "red"), false, false)
    message(color_text("Would you like to try again? (y/n)", "yellow"), false, false)
    option = gets.chomp.downcase
    if(option == "y" || option == "yes")
      stock_withdrawal(products)
    end
    clean_screen

    return
  end
  clean_screen
  puts [color_text("Enter the quantity of the product ", "blue"),
        color_text(product[:name],"yellow"),
        color_text(" to be withdrawn:", "blue")].join
  puts color_text("In stock: #{color_text(product[:quantity], "yellow")}", "green")
  withdrawal_quantity = gets.to_i
  product[:quantity] -= withdrawal_quantity

  message(color_text("The product was withdrawn successfully!!!", "green"), true, true, 3)
  list_products(products)
end
