require 'fileutils'
require_relative "display/menu"
require_relative "display/screen_operations"
require_relative "display/services/register_products"
require_relative "display/services/list_products"
require_relative "display/services/stock_withdrawal"
require_relative "domain/entities/product"
require_relative "domain/services/product_service"
require_relative "infrastructure/json_repository"

clean_screen

unless File.exist?(ProductService::FILE)
  create_file(ProductService::FILE)
  start_menu
else
  start_menu
end
