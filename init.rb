require_relative "display/menu"
require_relative "display/screen_operations"
require_relative "core/register_products"
require_relative "core/list_products"
require_relative "core/stock_withdrawal"


products = [
  { id: Time.now.to_i + 1, name: "Potato", description: "Fresh amazing potato", price: "2.95", quantity: 50 },
  { id: Time.now.to_i + 2, name: "Carrot", description: "Big fresh carrots",    price: "3.95", quantity: 20 },
  { id: Time.now.to_i + 3, name: "Bread",  description: "French baguette",      price: "5.95", quantity: 35 }
]
start_menu(products)
