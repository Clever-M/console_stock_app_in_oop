require 'fileutils'
require 'dotenv/load'
require_relative "display/menu"
require_relative "display/screen_operations"
require_relative "display/services/register_products"
require_relative "display/services/list_products"
require_relative "display/services/stock_withdrawal"
require_relative "domain/entities/product"
require_relative "domain/services/product_service"
require_relative "infrastructure/json_repository"
require_relative "infrastructure/csv_repository"
require 'byebug'

clean_screen

create_dot_env if File.zero?(".env")

$FILE = "db/products.#{ENV["DB_TYPE"]}"
$DRIVER = ENV["DB_TYPE"] == "json" ? JsonRepository : CsvRepository

create_file($FILE) unless File.exist?($FILE)
start_menu
