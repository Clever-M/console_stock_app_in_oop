def product_registration(products)
  message("Iniciating product registration...", true, true, 1.5)

  message(color_text("Type the product's name: ", "blue"), false, false)
  name = gets.chomp
  clean_screen

  message([color_text("Type the product's description (", "blue"),
           color_text(name, "green"),
           color_text("):", "blue")].join, false, false)
  description = gets.chomp
  clean_screen

  message([color_text("Type the product's price (", "blue"),
           color_text(name, "green"),
           color_text("):", "blue")].join, false, false)
  price = gets.to_f
  clean_screen

  message([color_text("Type the quantity of the product in stock (", "blue"),
           color_text(name, "green"),
           color_text("):", "blue")].join, false, false)

  quantity = gets.to_i
  clean_screen

  products << ({
    id: Time.now.to_i,
    name: ,
    description:,
    price:,
    quantity:
  })

  message([color_text("O produto ", "green"),
           color_text(name, "yellow"),
           color_text(" foi cadastrado com sucesso!!!", "green")].join, true, true, 3)
end
