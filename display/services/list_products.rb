require 'terminal-table'
def list_products
  clean_screen
  message(color_text("=" * 6 + " Products' list " + "=" * 6, "yellow"), false, false)

  table = Terminal::Table.new do |t|
    t.headings = %w(ID Name Description Price Quantity)

    ProductService.all.each do |product|
      t.add_row [product.id, product.name, product.description, product.price, product.quantity]
    end
  end

  puts color_text table, "purple"
  puts color_text("\n#{'=' * 6} Press enter to close #{'=' * 6}", "yellow")
  gets
  clean_screen
end
