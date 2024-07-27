require 'terminal-table'
def stock_withdrawal
  clean_screen
  products = ProductService.all
  if products.empty?
    puts color_text("\n  #{'<' * 6} No products registered yet, please register some products #{'>' * 6}", "purple")
    puts color_text("\n#{'=' * 6} Press enter to close #{'=' * 6}", "yellow")
    gets
    clean_screen
    return
  end

  message(color_text("=" * 6 + " Choose one of the products below " + "=" * 6, "yellow"), false, false)

  table = Terminal::Table.new do |t|
    t.headings = %w(ID Name Quantity)

    ProductService.all.each do |product|
      t.add_row [product.id, product.name, product.quantity]
    end
  end

  puts color_text table, "purple"
  puts color_text("Enter the product ID:", "blue")
  id = gets.to_i

  product = products.find{ |p| p.id == id }
  unless product
    clean_screen
    message(color_text("Product with ID #{id} was not found!", "red"), false, false)
    message(color_text("Would you like to try again? (y/n)", "yellow"), false, false)
    option = gets.chomp.downcase
    if(option == "y" || option == "yes")
      stock_withdrawal
    end
    clean_screen

    return
  end
  clean_screen
  puts [color_text("Enter the quantity of the product ", "blue"),
        color_text(product.name,"yellow"),
        color_text(" to be withdrawn:", "blue")].join
  puts color_text("In stock: #{color_text(product.quantity, "yellow")}", "green")
  withdrawal_quantity = gets.to_i
  product.quantity -= withdrawal_quantity
  ProductService.update(product)

  message(color_text("The product was withdrawn successfully!!!", "green"), true, true, 3)
  list_products
end
