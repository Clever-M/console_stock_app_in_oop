require 'terminal-table'
def list_products(products)
  clean_screen
  message(color_text("=" * 6 + " Products' list " + "=" * 6, "yellow"), false, false)

  table = Terminal::Table.new do |t|
    t.headings = %w(ID Name Description Price Quantity)

    products.each do |row|
      t.add_row [row[:id], row[:name], row[:description], row[:price], row[:quantity]]
    end
  end

  puts color_text table, "purple"
  puts color_text("\n#{'=' * 6} Press enter to close #{'=' * 6}", "yellow")
  gets
  clean_screen
end
